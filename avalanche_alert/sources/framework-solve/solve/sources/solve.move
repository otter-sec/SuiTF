module suitfsol::solution {
    use sui::tx_context::TxContext;
    use suitfch::AvalancheAlert;

    public entry fun solve(ctx: &mut TxContext) {
        suitfch::AvalancheAlert::alert(1337*1337, ctx);
    }
}
