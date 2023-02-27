module suitfch::AvalancheAlert {
    use sui::tx_context::{TxContext, sender};
    use std::bcs;
    use sui::transfer;
    use sui::object::{Self, UID};

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

    public entry fun alert(status: &mut Status, value: u64, ctx: &mut TxContext) {
        
        let sender_addr : address = sender(ctx);
        let _sender_addr_bytes : vector<u8> = bcs::to_bytes(&sender_addr);

        assert!(value == 1337*1337, 0);

        status.solved = true;

    }
}
