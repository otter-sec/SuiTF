use move_core_types::value::MoveValue;
use std::env;
use std::error::Error;
use std::fmt;
use std::io::{Read, Write};
use std::mem::drop;
use std::net::{TcpListener, TcpStream};
use std::path::Path;
use std::str;
use std::thread;
use sui_ctf_framework::move_transactional_test_runner::framework::MoveTestAdapter;
use sui_ctf_framework::NumericalAddress;
use sui_transactional_test_runner::args::SuiValue;
use sui_transactional_test_runner::args::ViewObjectCommand;
use sui_transactional_test_runner::args::SuiSubcommand;
use move_transactional_test_runner::tasks::TaskInput;

fn handle_client(mut stream: TcpStream) -> Result<(), Box<dyn Error>> {
    let chall = "SafeSecret";
    let named_addresses = vec![
        ("suitfch".to_string(), NumericalAddress::parse_str("0x0")?),
        ("suitfsol".to_string(), NumericalAddress::parse_str("0x0")?),
    ];
    let mut solution_data = [0 as u8; 1000]; 

    let precompiled = sui_ctf_framework::get_precompiled(Path::new(&format!(
        "./chall/build/{}/sources/dependencies",
        chall
    )));
    let mut adapter = sui_ctf_framework::initialize(
        named_addresses,
        &precompiled,
        Some(vec!["challenge".to_string(), "solver".to_string()]),
    );

    let _solution_size = stream.read(&mut solution_data)?;

    // Publish challenge module
    let mod_bytes: Vec<u8> = std::fs::read(format!(
        "./chall/build/{}/bytecode_modules/{}.mv",
        chall, chall
    ))?;
    let chall_addr = sui_ctf_framework::publish_compiled_module(&mut adapter, mod_bytes);
    println!("published at: {:?}", chall_addr);

    // Publish solution module
    let sol_addr = sui_ctf_framework::publish_compiled_module(&mut adapter, solution_data.to_vec());

    let mut output = String::new();
    fmt::write(
        &mut output,
        format_args!(
            "[SERVER] Challenge published at {}. Solution published at {}",
            chall_addr.to_string().as_str(),
            sol_addr.to_string().as_str()
        ),
    ).unwrap();
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

    // Prepare Function Call Arguments
    let mut args_sol : Vec<SuiValue> = Vec::new();

    //     - User object
    let arg_ob = SuiValue::Object(108);
    args_sol.push(arg_ob);

    // Call the solve function
    let ret_val = sui_ctf_framework::call_function(
        &mut adapter,
        sol_addr,
        "solution",
        "solve",
        args_sol,
        Some("solver".to_string())
    );
    println!("[SERVER] This is return value {:#?}", ret_val);
    println!("");

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
                        stream.write(message.as_bytes()).unwrap();
                    } else {
                        stream.write("[SERVER] Flag not found, please contact admin".as_bytes()).unwrap();
                    }
                }
                else {
                    println!("[SERVER] Invalid Solution!");
                    println!("");
                    stream.write("[SERVER] Invalid Solution!".as_bytes()).unwrap();
                }
            }
            else {
                println!("[SERVER] Invalid Solution!");
                println!("");
                stream.write("[SERVER] Invalid Solution!".as_bytes()).unwrap();
            }
        },
        Err(_error) => {
            println!("[SERVER] Invalid Solution!");
            println!("");
            stream.write("[SERVER] Invalid Solution!".as_bytes()).unwrap();
        },
    } {};
    Ok(())
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
                thread::spawn(move|| handle_client(stream).unwrap());
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
