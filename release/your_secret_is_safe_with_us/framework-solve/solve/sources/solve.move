module suitfsol::solution {

    // [*] Import dependencies
    use sui::tx_context::TxContext;
    use std::vector;
    use std::debug;
    use suitfch::SafeSecret;

    public entry fun solve(users: &mut SafeSecret::Users, ctx: &mut TxContext) {
        // Enter challenge solution here
    }
}
