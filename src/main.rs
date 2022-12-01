use std::env;
use std::process;

fn main() {
    let message = env::var("MESSAGE").unwrap_or("DO NOT CALL ME.".to_string());
    println!("{}", message);
    process::exit(-1)
}
