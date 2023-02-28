use std::env;
use std::error::Error;
use std::fmt;
use std::io::{Read, Write};
use std::mem::drop;
use std::net::{TcpListener, TcpStream};
use std::path::Path;
use std::thread;
use sui_ctf_framework::NumericalAddress;
use sui_transactional_test_runner::args::SuiValue;

fn handle_client(mut stream: TcpStream) -> Result<(), Box<dyn Error>> {
    let chall = "NikolaJokicFavorites";
    let named_addresses = vec![
        ("suitfch".to_string(), NumericalAddress::parse_str("0x0")?),
        ("suitfsol".to_string(), NumericalAddress::parse_str("0x0")?),
    ];
    let mut solution_data = [0 as u8; 10000];

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

    // Send over the addresses of challenge & solution
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

    // Call the solve function
    let mut args: Vec<SuiValue> = Vec::new();
    let arg_ob = SuiValue::Object(107);
    args.push(arg_ob);
    let ret_val = sui_ctf_framework::call_function(
        &mut adapter,
        sol_addr,
        "solution",
        "solve",
        args,
        Some("solver".to_string()),
    );
    println!("[SERVER] This is return value {:#?}", ret_val);
    println!("");

    // Check the solution
    let mut args2: Vec<SuiValue> = Vec::new();
    let arg_ob2 = SuiValue::Object(107);
    args2.push(arg_ob2);

    let ret_val = sui_ctf_framework::call_function(
        &mut adapter,
        chall_addr,
        "NikolaJokicFavorites",
        "check_status",
        args2,
        Some("challenge".to_string()),
    );
    println!("[SERVER] This is return value {:#?}", ret_val);
    println!("");

    // Validate solution
    match ret_val {
        Ok(()) => {
            println!("[SERVER] Correct Solution!");
            println!("");
            if let Ok(flag) = env::var("FLAG") {
                let message = format!("[SERVER] Congrats, here is the flag: {}", flag);
                stream.write(message.as_bytes()).unwrap();
            } else {
                stream.write("[SERVER] Flag not found, please contact admin".as_bytes()).unwrap();
            }
        }
        Err(_error) => {
            println!("[SERVER] Invalid Solution!");
            println!("");
            stream.write("[SERVER] Invalid Solution!".as_bytes()).unwrap();
        }
    }

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
                thread::spawn(move || handle_client(stream).unwrap());
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
