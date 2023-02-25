module suitfch::AvalancheAlert {
    use sui::tx_context::{TxContext, sender};
    use std::bcs;
    use std::debug;

    public entry fun alert(value: u64, ctx: &mut TxContext) {
        
        let sender_addr : address = sender(ctx);
        let sender_addr_bytes : vector<u8> = bcs::to_bytes(&sender_addr);
        debug::print(&sender_addr_bytes);

        assert!(value == 1337*1337, 0);
    }
}
