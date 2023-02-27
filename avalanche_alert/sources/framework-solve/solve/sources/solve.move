module suitfsol::solution {
    use sui::tx_context::TxContext;
    use suitfch::AvalancheAlert;

    public entry fun solve(status: &mut AvalancheAlert::Status, ctx: &mut TxContext) {
        suitfch::AvalancheAlert::alert(status, 1337*1337, ctx);
    }
}
