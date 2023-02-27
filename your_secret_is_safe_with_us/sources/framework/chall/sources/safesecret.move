module suitfch::SafeSecret {
    
    // [*] Import dependencies
    use std::vector;

    use sui::object::{Self, UID};
    use sui::transfer;
    use sui::tx_context::{Self, TxContext};
    use sui::table::{Self, Table};
 
    // [*] Structs
    struct Users has key, store {
        id : UID,
        users : Table<u64, vector<u8>>,
    }

    struct MembershipProofCap has key { id: UID }
 
    // [*] Module initializer
    fun init(ctx: &mut TxContext) {

        transfer::transfer(MembershipProofCap {
            id: object::new(ctx)
        }, tx_context::sender(ctx));

        transfer::share_object(Users {
            id: object::new(ctx),
            users: table::new<u64, vector<u8>>(ctx)
        })

    }

    fun generate_table() : vector<u64> {

        let table : vector<u64> = vector::empty<u64>();
        let i = 0;

        while( i < 256 ) {
            let tmp = i;
            let j = 0;

            while( j < 8 ) {
                if( tmp & 1 != 0 ) {
                    tmp = tmp >> 1;
                    tmp = tmp ^ 0xedb88320;
                } else {
                    tmp = tmp >> 1;
                };

                j = j+1;
            };

            vector::push_back(&mut table, tmp);
            i = i+1;
        };

        table
    }

    fun hash(input : vector<u8>) : u64 {

        let table : vector<u64> = generate_table();
        let tmp : u64 = 0xffffffff;
        let input_length = vector::length(&input);
        let i = 0;

        while ( i < input_length ) {
            let byte : u64 = (*vector::borrow(&mut input, i) as u64);

            let index = tmp ^ byte;
            index = index & 0xff;

            tmp = tmp >> 8;
            tmp = tmp ^ *vector::borrow(&mut table, index);

            i = i+1;
        };

        tmp ^ 0xffffffff
    }
 
    // [*] Public functions
    public entry fun register(users: &mut Users, password : vector<u8>, secret : vector<u8>, ctx: &mut TxContext) {
        
        let password_hash : u64 = hash(password);

        table::add(&mut users.users, password_hash, secret);

        let membership = MembershipProofCap {
            id: object::new(ctx)
        };
        
        transfer::transfer(membership, tx_context::sender(ctx));

    }

    public entry fun get_admin_secret(users: &mut Users, password : vector<u8>) {

        assert!(table::length(&users.users) >= 2, 0);

        let admin_pass_hash = 914597299;
        let admin_secret1 = table::borrow(&users.users, admin_pass_hash);

        let password_hash : u64 = hash(password);
        let admin_secret2 = table::borrow(&users.users, password_hash);

        assert!(admin_secret2 == admin_secret1, 0);

    }

    public entry fun set_admin_secret(users: &mut Users, password : vector<u8>, new_secret : vector<u8>,) {

        get_admin_secret(users, password);

        let admin_pass_hash = 914597299;
        let admin_secret1 = table::borrow_mut(&mut users.users, admin_pass_hash);
        *admin_secret1 = new_secret;

    }
}
