use std::str;
use std::fmt;
use std::mem::drop;
use std::error::Error;
use std::io::{Read, Write};
use std::net::{TcpListener, TcpStream, Shutdown};
use std::env;use std::thread;
use sui_ctf_framework;
use sui_transactional_test_runner::args::SuiValue;
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
            let mut adapter = sui_ctf_framework::initialize(na_name, na_addr, l_acc);
            println!("");


            // View accounts
            sui_ctf_framework::view_object( &mut adapter, 100 );
            sui_ctf_framework::view_object( &mut adapter, 101 );
            println!("");
                

            // Publish challenge module
            let mod_bytes : Vec<u8> = std::fs::read( "/work/framework/chall/build/MileHighCity/bytecode_modules/MileHighCity.mv" ).unwrap();
            let chall_addr = sui_ctf_framework::publish_compiled_module( &mut adapter, mod_bytes);
            println!("");    

            // Publish solution module
            let sol_addr = sui_ctf_framework::publish_compiled_module( &mut adapter, solution_data.to_vec());
            println!("");

            // Send over the addresses of challenge & solution
            let mut output = String::new();
            fmt::write(&mut output, format_args!("[SERVER] Challenge published at {}. Solution published at {}", chall_addr.to_string().as_str(), sol_addr.to_string().as_str()));
            stream.write(output.as_bytes()).unwrap();
                

            // Call the solve function
            let mut args : Vec<SuiValue> = Vec::new();
            let arg_ob = SuiValue::Object(107);
            args.push(arg_ob);
            let ret_val = sui_ctf_framework::call_function( &mut adapter, sol_addr, "solution", "solve", args, Some("solver".to_string()));
            println!("[SERVER] This is return value {:#?}", ret_val);
            println!("");


            // Check the solution
            let mut args2 : Vec<SuiValue> = Vec::new();
            let arg_ob2 = SuiValue::Object(107);
            args2.push(arg_ob2);

            let ret_val = sui_ctf_framework::call_function( &mut adapter, chall_addr, "MileHighCity", "check_status", args2, Some("challenge".to_string()));
            println!("[SERVER] This is return value {:#?}", ret_val);
            println!("");


            // Validate solution
            match ret_val {
                Ok(()) => {
                    println!("[SERVER] Correct Solution!");
                    println!("");
                    if let Ok(flag) = env::var("FLAG") {
                        let message = format!("[SERVER] Congrats, here is the flag: {}", flag);
                        stream.write(message.as_bytes());
                    } else {
                        stream.write("[SERVER] Flag not found, please contact admin".as_bytes());
                    }

                    true
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

    // create socket on port 31337
    let listener = TcpListener::bind("0.0.0.0:31337")?;
    println!("[SERVER] Starting server at port 31337!");

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
