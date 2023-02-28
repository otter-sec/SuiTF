module suitfsol::solution {
    use sui::tx_context::TxContext;
    use suitfch::NikolaJokicFavorites;

    public entry fun solve(status: &mut NikolaJokicFavorites::Status, ctx: &mut TxContext) {
        suitfch::NikolaJokicFavorites::find(status, x"73756920", 1012172818674167809, ctx);
    }
}
