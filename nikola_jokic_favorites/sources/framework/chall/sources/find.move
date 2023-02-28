module suitfch::NikolaJokicFavorites {
    use sui::tx_context::{TxContext, sender};
    use std::bcs;
    use sui::transfer;
    use sui::object::{Self, UID};
    use std::hash;
    use std::vector;

    // [*] Structs
    struct Status has key, store {
        id : UID,
        solved : bool,
    }

    // [*] Module initializer
    fun init(ctx: &mut TxContext) {

        transfer::share_object(Status {
            id: object::new(ctx),
            solved: false
        })

    }

    public entry fun check_status(status: &mut Status) {
        assert!(status.solved == true, 0);
    }

    public entry fun find(status: &mut Status, guess : vector<u8>, value: u128, ctx: &mut TxContext) {
        
        let sender_addr : address = sender(ctx);
        let _sender_addr_bytes : vector<u8> = bcs::to_bytes(&sender_addr);

        hash(guess);
        find_number(value);

        status.solved = true;
    }

    fun hash(guess : vector<u8>) {
        let guess = copy guess;
        let borrow_guess = &mut guess;
        assert!(vector::length(borrow_guess) == 4, 0);

        vector::push_back(borrow_guess, 109);
        vector::push_back(borrow_guess, 111);
        vector::push_back(borrow_guess, 118);
        vector::push_back(borrow_guess, 101);
        
        assert!(hash::sha3_256(guess) == x"b696109b889b20e5e50b93e739a0734d94fa092c8289ade07f84a4969dfb039a", 1);
    }

    fun find_number(x: u128) {
        assert!(pow(13383215253051849479, x, 16724971911849394411) == 7619167469078768920, 2)
    }

    fun pow(g: u128, x: u128, p: u128): u128 {
        let ans = 1;
        g = g % p;
        while (x != 0) {
            if ((x & 1) == 1) {
                ans = ((ans % p) * (g % p)) % p;
            };
            x = x >> 1;
            g = (g * g) % p;
        };
        ans
    }
}
