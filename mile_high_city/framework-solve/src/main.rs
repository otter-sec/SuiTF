use std::net::{TcpStream};
use std::io::{Read, Write};
use std::str::from_utf8;
use std::{error::Error, fs, io::prelude::*, io::BufReader};

fn main() -> Result<(), Box<dyn Error>> {

    match TcpStream::connect("65.21.155.63:31338") {
        Ok(mut stream) => {
            println!("  - Connected!");

            let mod_data : Vec<u8> = fs::read("/work/framework-solve/solve/build/solution/bytecode_modules/solution.mv").unwrap();
            println!("  - Loaded solution!");

            stream.write_all(&mod_data)?;
            stream.flush()?;
            println!("  - Sent solution!");

            let mut return_data = [0 as u8; 200];
            match stream.read(&mut return_data) {
                Ok(_) => {
                    println!("  - Connection Output: '{}'", from_utf8(&return_data).unwrap()); // Get module address
                    let mut flag = [0 as u8; 200]; 
                    match stream.read(&mut flag) {
                        Ok(_) => {
                            println!("  - Connection Output: '{}'", from_utf8(&flag).unwrap()); // Get flag

                        },
                        Err(e) => {
                            println!("  - Failed to receive data: {}", e);
                        }
                    }
                },
                Err(e) => {
                    println!("  - Failed to receive data: {}", e);
                }
            }
        },
        Err(e) => {
            println!("  - Failed to connect: {}", e);
        }
    }
    println!("  - Terminated.");

    Ok(())
}
