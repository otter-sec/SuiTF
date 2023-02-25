use std::str;
use std::fmt;
use std::mem::drop;
use std::error::Error;
use std::io::{Read, Write};
use std::net::{TcpListener, TcpStream, Shutdown};
use std::env;use std::thread;
use sui_ctf_framework;
use sui_transactional_test_runner::{
    args::{SuiValue,ViewObjectCommand,SuiSubcommand},
    test_adapter::SuiTestAdapter,
};
use move_transactional_test_runner::{
    tasks::TaskInput,
    framework::MoveTestAdapter,
};
use move_core_types::{
    value::MoveValue,
    account_address::AccountAddress,
};


fn handle_client(mut stream: TcpStream) {
    let mut solution_data = [0 as u8; 1000]; 

    while match stream.read(&mut solution_data) {

        Ok(solution_size) => {
            
            // Initialize accounts challenge & solver
            let na_name : Vec<&str> = ["suitfch", "suitfsol"].to_vec();
            let na_addr : Vec<[u8; 20]> = [
                [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
                [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
            ].to_vec();
            let l_acc : Vec<&str> = ["challenge", "solver"].to_vec();
            let mut adapter : SuiTestAdapter = sui_ctf_framework::initialize(na_name, na_addr, l_acc);
            println!("");


            // View accounts
            sui_ctf_framework::view_object( &mut adapter, 100 );
            sui_ctf_framework::view_object( &mut adapter, 101 );
            println!("");
                

            // Publish challenge module
            let mod_bytes : Vec<u8> = std::fs::read( "/work/framework/chall/build/SafeSecret/bytecode_modules/SafeSecret.mv" ).unwrap();
            let chall_addr = sui_ctf_framework::publish_compiled_module( &mut adapter, mod_bytes);
            println!("");    


            // View Objects
            sui_ctf_framework::view_object( &mut adapter, 105 );
            sui_ctf_framework::view_object( &mut adapter, 106 );
            // sui_ctf_framework::view_object( &mut adapter, 107 ); // MembershipCap ID
            // sui_ctf_framework::view_object( &mut adapter, 108 ); // User Object ID
            println!("");


            // Publish solution module
            let sol_addr = sui_ctf_framework::publish_compiled_module( &mut adapter, solution_data.to_vec());
            println!("");


            // Send over the addresses of challenge & solution
            let mut output = String::new();
            fmt::write(&mut output, format_args!("[SERVER] Challenge published at {}. Solution published at {}", chall_addr.to_string().as_str(), sol_addr.to_string().as_str()));
            stream.write(output.as_bytes()).unwrap();


            // Prepare Function Call Arguments
            let mut args_ch : Vec<SuiValue> = Vec::new();

            //     - User object
            let arg1 = SuiValue::Object(108);
            args_ch.push(arg1);

            //     - Password  
            let data1 = Vec::from([MoveValue::U8(115), 
                                   MoveValue::U8(110), 
                                   MoveValue::U8(111), 
                                   MoveValue::U8(119)]);
            let password : MoveValue = MoveValue::Vector(data1);
            let arg2 = SuiValue::MoveValue(password);
            args_ch.push(arg2);

            //     - Secret
            let data2 = Vec::from([MoveValue::U8(79), 
                                   MoveValue::U8(84), 
                                   MoveValue::U8(84), 
                                   MoveValue::U8(69),
                                   MoveValue::U8(82),
                                   MoveValue::U8(83),
                                   MoveValue::U8(69),
                                   MoveValue::U8(67)]);
            let secret : MoveValue = MoveValue::Vector(data2);
            let arg3 = SuiValue::MoveValue(secret);
            args_ch.push(arg3);

            // Call the register function
            let ret_val = sui_ctf_framework::call_function( &mut adapter, chall_addr, "SafeSecret", "register", args_ch, Some("challenge".to_string()));
            println!("[SERVER] This is return value {:#?}", ret_val);
            println!("");


            // View Object
            sui_ctf_framework::view_object( &mut adapter, 113 );


            // Prepare Function Call Arguments
            let mut args_sol : Vec<SuiValue> = Vec::new();

            //     - User object
            let arg_ob = SuiValue::Object(108);
            args_sol.push(arg_ob);

            // Call the solve function
            let ret_val = sui_ctf_framework::call_function( &mut adapter, sol_addr, "solution", "solve", args_sol, Some("solver".to_string()));
            println!("[SERVER] This is return value {:#?}", ret_val);
            println!("");

            
            // Validate solution
            match ret_val {
                Ok(()) => {

                    // Simulate View Object to extract data
                    let vcmd : ViewObjectCommand = ViewObjectCommand{
                        id: 113,
                    };
                
                    let command : SuiSubcommand = SuiSubcommand::ViewObject(vcmd);
                    let name = "blank".to_string();
                    let number = 0;
                    let start_line = 1;
                    let command_lines_stop = 1;
                    let stop_line = 1;
                    let data = None;
                
                    let arg_view = TaskInput {
                        command,
                        name,
                        number,
                        start_line,
                        command_lines_stop,
                        stop_line,
                        data,
                    };
                
                    let output = adapter.handle_subcommand(arg_view).unwrap().unwrap();
                    let parts: Vec<&str> = output.split("vector[").collect();

                    if let Some(element) = parts.get(1) {
                        if element.contains("88u8, 88u8, 88u8, 88u8") {
                            
                            println!("[SERVER] Correct Solution!");
                            println!("");
                            if let Ok(flag) = env::var("FLAG") {
                                let message = format!("[SERVER] Congrats, here is the flag: {}", flag);
                                stream.write(message.as_bytes());
                            } else {
                                stream.write("[SERVER] Flag not found, please contact admin".as_bytes());
                            }
        
                            true
                        }
                        else {
                            println!("[SERVER] Invalid Solution!");
                            println!("");
                            stream.write("[SERVER] Invalid Solution!".as_bytes());

                            false
                        }
                    }
                    else {
                        println!("[SERVER] Invalid Solution!");
                        println!("");
                        stream.write("[SERVER] Invalid Solution!".as_bytes());

                        false
                    }
                },
                Err(error) => {
                    println!("[SERVER] Invalid Solution!");
                    println!("");
                    stream.write("[SERVER] Invalid Solution!".as_bytes());

                    false
                },
            }
        },
        Err(_) => {
            println!("[SERVER] An error occurred, terminating connection with {}", stream.peer_addr().unwrap());
            stream.shutdown(Shutdown::Both).unwrap();
            false
        }
    } {}
}

fn main() -> Result<(), Box<dyn Error>> {

    // create socket on port 31339
    let listener = TcpListener::bind("0.0.0.0:31339")?;
    println!("[SERVER] Starting server at port 31339!");

    // wait for framework-solve to send solution
    for stream in listener.incoming() {
        match stream {
            Ok(stream) => {
                println!("[SERVER] New connection: {}", stream.peer_addr().unwrap());
                thread::spawn(move|| {
                    handle_client(stream)
                });
            }
            Err(e) => {
                println!("[SERVER] Error: {}", e);
            }
        }        
    }

    // close the socket server
    drop(listener);
    Ok(())
}
