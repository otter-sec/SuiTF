module suitfch::AvalancheAlert {

    use std::debug;
    use std::vector;
    use sui::tx_context::TxContext;

    const ErrInvalidPath : u64 = 0;

    public entry fun follow(path : vector<u64>, _ctx: &mut TxContext) {
        
        let path_length : u64 = vector::length(&path);
        assert!(path_length == 51, ErrInvalidPath);

        let tmp1 = *vector::borrow(&path, 33); 
        let tmp2 = *vector::borrow(&path, 14); 
        assert!((tmp1 - tmp2) == 1, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 37); 
        assert!(((tmp1 >> 2) & 123) == 19, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 23); 
        assert!((tmp1 & 210) == 82, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 26); 
        tmp2 = *vector::borrow(&path, 6); 
        assert!((tmp1 + tmp2) == 231, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 37); 
        tmp2 = *vector::borrow(&path, 21); 
        assert!((tmp1 * tmp2) == 9405, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 38); 
        tmp2 = *vector::borrow(&path, 41); 
        assert!((tmp1 ^ 160) ^ tmp2 == 160, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 30); 
        tmp2 = *vector::borrow(&path, 21); 
        assert!((tmp1 ^ 40) ^ tmp2 == 38, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 30); 
        tmp2 = *vector::borrow(&path, 14); 
        assert!(((tmp1 >> 1) * (tmp2 << 3)) == 49680, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 15); 
        tmp2 = *vector::borrow(&path, 23); 
        assert!((tmp1 ^ 133) ^ tmp2 == 133, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 33); 
        tmp2 = *vector::borrow(&path, 12); 
        assert!((tmp1 & tmp2) == 84, ErrInvalidPath);

        tmp1 = *vector::borrow(&path, 17); 
        tmp2 = *vector::borrow(&path, 30); 
        assert!((tmp1 ^ 38) ^ tmp2 == 20, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 0); 
        assert!(((tmp1 >> 7) & 220) == 0, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 13); 
        tmp2 = *vector::borrow(&path, 15); 
        assert!((tmp1 * tmp2) == 9975, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 30); 
        tmp2 = *vector::borrow(&path, 36); 
        assert!(((tmp1 >> 1) * (tmp2 << 3)) == 47520, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 21); 
        tmp2 = *vector::borrow(&path, 42); 
        assert!((tmp1 * tmp2) == 11979, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 49); 
        tmp2 = *vector::borrow(&path, 14); 
        assert!(((tmp1 >> 2) * (tmp2 << 2)) == 5980, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 31); 
        assert!((tmp1 & 176) == 48, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 34); 
        tmp2 = *vector::borrow(&path, 0); 
        assert!(((tmp1 >> 1) * (tmp2 << 2)) == 15936, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 28); 
        tmp2 = *vector::borrow(&path, 16); 
        assert!((tmp1 + tmp2) == 153, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 11); 
        tmp2 = *vector::borrow(&path, 4); 
        assert!(((tmp1 >> 2) * (tmp2 << 1)) == 3500, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 7); 
        tmp2 = *vector::borrow(&path, 2); 
        assert!((tmp1 - tmp2) == 2, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 41); 
        tmp2 = *vector::borrow(&path, 10); 
        assert!((tmp1 ^ 46) ^ tmp2 == 116, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 47); 
        tmp2 = *vector::borrow(&path, 21); 
        assert!((tmp1 + tmp2) == 151, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 23); 
        assert!(((tmp1 >> 6) & 131) == 1, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 50); 
        assert!(((tmp1 >> 7) & 205) == 0, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 10); 
        tmp2 = *vector::borrow(&path, 45); 
        assert!((tmp1 ^ 182) ^ tmp2 == 180, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 7); 
        assert!(((tmp1 >> 5) & 80) == 0, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 36); 
        tmp2 = *vector::borrow(&path, 47); 
        assert!((tmp1 ^ 190) ^ tmp2 == 228, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 0); 
        tmp2 = *vector::borrow(&path, 32); 
        assert!((tmp1 & tmp2) == 81, ErrInvalidPath);

        tmp1 = *vector::borrow(&path, 47); 
        tmp2 = *vector::borrow(&path, 33); 
        assert!(((tmp1 >> 1) * (tmp2 << 1)) == 6032, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 39); 
        tmp2 = *vector::borrow(&path, 44); 
        assert!((tmp1 + tmp2) == 203, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 37); 
        assert!((tmp1 & 173) == 13, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 25); 
        tmp2 = *vector::borrow(&path, 15); 
        assert!((tmp1 - tmp2) == 0, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 47); 
        tmp2 = *vector::borrow(&path, 13); 
        assert!((tmp1 + tmp2) == 157, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 16); 
        tmp2 = *vector::borrow(&path, 8); 
        assert!((tmp1 + tmp2) == 101, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 44); 
        tmp2 = *vector::borrow(&path, 47); 
        assert!((tmp1 & tmp2) == 20, ErrInvalidPath);

        tmp1 = *vector::borrow(&path, 33); 
        tmp2 = *vector::borrow(&path, 37); 
        assert!((tmp1 & tmp2) == 84, ErrInvalidPath);

        tmp1 = *vector::borrow(&path, 29); 
        assert!((tmp1 & 134) == 6, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 15); 
        assert!((tmp1 & 134) == 6, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 13); 
        tmp2 = *vector::borrow(&path, 49); 
        assert!((tmp1 * tmp2) == 5565, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 15); 
        assert!((tmp1 & 236) == 76, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 45); 
        assert!((tmp1 & 246) == 100, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 0); 
        assert!((tmp1 & 212) == 80, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 32); 
        assert!((tmp1 & 218) == 80, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 10); 
        assert!((tmp1 & 2) == 2, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 20); 
        tmp2 = *vector::borrow(&path, 11); 
        assert!((tmp1 + tmp2) == 213, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 32); 
        tmp2 = *vector::borrow(&path, 7); 
        assert!(((tmp1 >> 2) * (tmp2 << 3)) == 24824, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 25); 
        tmp2 = *vector::borrow(&path, 24); 
        assert!(((tmp1 >> 3) * (tmp2 << 3)) == 3344, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 1); 
        tmp2 = *vector::borrow(&path, 0); 
        assert!(((tmp1 >> 3) * (tmp2 << 2)) == 4648, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 49); 
        tmp2 = *vector::borrow(&path, 1); 
        assert!(((tmp1 >> 1) * (tmp2 << 3)) == 24336, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 25); 
        tmp2 = *vector::borrow(&path, 40); 
        assert!(((tmp1 >> 1) * (tmp2 << 1)) == 11186, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 43); 
        tmp2 = *vector::borrow(&path, 46); 
        assert!((tmp1 ^ 32) ^ tmp2 == 96, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 34); 
        assert!(((tmp1 >> 5) & 235) == 3, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 33); 
        tmp2 = *vector::borrow(&path, 31); 
        assert!(((tmp1 >> 2) * (tmp2 << 3)) == 11136, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 21); 
        tmp2 = *vector::borrow(&path, 45); 
        assert!((tmp1 * tmp2) == 10692, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 6); 
        tmp2 = *vector::borrow(&path, 7); 
        assert!((tmp1 ^ 217) ^ tmp2 == 193, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 15); 
        tmp2 = *vector::borrow(&path, 47); 
        assert!((tmp1 & tmp2) == 20, ErrInvalidPath);

        tmp1 = *vector::borrow(&path, 40); 
        tmp2 = *vector::borrow(&path, 45); 
        assert!((tmp1 - tmp2) == 11, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 41); 
        tmp2 = *vector::borrow(&path, 23); 
        assert!((tmp1 ^ 226) ^ tmp2 == 137, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 1); 
        tmp2 = *vector::borrow(&path, 13); 
        assert!((tmp1 + tmp2) == 222, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 37); 
        tmp2 = *vector::borrow(&path, 9); 
        assert!((tmp1 & tmp2) == 17, ErrInvalidPath);

        tmp1 = *vector::borrow(&path, 17); 
        assert!(((tmp1 >> 1) & 162) == 34, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 34); 
        tmp2 = *vector::borrow(&path, 12); 
        assert!(((tmp1 >> 1) * (tmp2 << 2)) == 18240, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 49); 
        assert!(((tmp1 >> 2) & 55) == 5, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 21); 
        tmp2 = *vector::borrow(&path, 23); 
        assert!((tmp1 & tmp2) == 67, ErrInvalidPath);

        tmp1 = *vector::borrow(&path, 37); 
        tmp2 = *vector::borrow(&path, 26); 
        assert!((tmp1 * tmp2) == 11020, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 41); 
        assert!(((tmp1 >> 6) & 206) == 0, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 36); 
        tmp2 = *vector::borrow(&path, 27); 
        assert!((tmp1 * tmp2) == 11440, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 25); 
        assert!(((tmp1 >> 7) & 13) == 0, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 41); 
        assert!(((tmp1 >> 7) & 124) == 0, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 10); 
        assert!(((tmp1 >> 6) & 89) == 1, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 38); 
        tmp2 = *vector::borrow(&path, 23); 
        assert!((tmp1 & tmp2) == 20, ErrInvalidPath);

        tmp1 = *vector::borrow(&path, 25); 
        tmp2 = *vector::borrow(&path, 30); 
        assert!(((tmp1 >> 1) * (tmp2 << 3)) == 40984, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 9); 
        assert!(((tmp1 >> 7) & 145) == 0, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 48); 
        tmp2 = *vector::borrow(&path, 34); 
        assert!((tmp1 + tmp2) == 197, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 42); 
        assert!(((tmp1 >> 1) & 39) == 36, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 16); 
        assert!(((tmp1 >> 4) & 230) == 2, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 33); 
        tmp2 = *vector::borrow(&path, 19); 
        assert!((tmp1 * tmp2) == 6032, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 6); 
        tmp2 = *vector::borrow(&path, 13); 
        assert!((tmp1 & tmp2) == 97, ErrInvalidPath);

        tmp1 = *vector::borrow(&path, 45); 
        tmp2 = *vector::borrow(&path, 38); 
        assert!((tmp1 + tmp2) == 160, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 1); 
        tmp2 = *vector::borrow(&path, 46); 
        assert!((tmp1 * tmp2) == 5967, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 50); 
        tmp2 = *vector::borrow(&path, 37); 
        assert!((tmp1 * tmp2) == 11875, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 38); 
        tmp2 = *vector::borrow(&path, 32); 
        assert!((tmp1 & tmp2) == 52, ErrInvalidPath);

        tmp1 = *vector::borrow(&path, 40); 
        assert!(((tmp1 >> 6) & 116) == 0, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 15); 
        tmp2 = *vector::borrow(&path, 1); 
        assert!(((tmp1 >> 2) * (tmp2 << 2)) == 10764, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 7); 
        assert!(((tmp1 >> 2) & 100) == 0, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 28); 
        assert!(((tmp1 >> 5) & 68) == 0, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 24); 
        tmp2 = *vector::borrow(&path, 27); 
        assert!(((tmp1 >> 2) * (tmp2 << 3)) == 7488, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 48); 
        tmp2 = *vector::borrow(&path, 17); 
        assert!(((tmp1 >> 3) * (tmp2 << 2)) == 4560, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 45); 
        assert!(((tmp1 >> 2) & 201) == 9, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 12); 
        assert!(((tmp1 >> 2) & 61) == 21, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 49); 
        assert!(((tmp1 >> 6) & 142) == 0, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 27); 
        assert!(((tmp1 >> 6) & 158) == 0, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 48); 
        tmp2 = *vector::borrow(&path, 38); 
        assert!(((tmp1 >> 3) * (tmp2 << 1)) == 1248, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 35); 
        assert!(((tmp1 >> 6) & 102) == 0, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 26); 
        tmp2 = *vector::borrow(&path, 8); 
        assert!(((tmp1 >> 2) * (tmp2 << 1)) == 2842, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 3); 
        tmp2 = *vector::borrow(&path, 4); 
        assert!(((tmp1 >> 3) * (tmp2 << 2)) == 2800, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 11); 
        assert!(((tmp1 >> 5) & 25) == 1, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 24); 
        tmp2 = *vector::borrow(&path, 45); 
        assert!(((tmp1 >> 2) * (tmp2 << 3)) == 7776, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 46); 
        assert!(((tmp1 >> 5) & 221) == 1, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 5); 
        tmp2 = *vector::borrow(&path, 2); 
        assert!(((tmp1 >> 2) * (tmp2 << 3)) == 25200, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 5); 
        assert!(((tmp1 >> 6) & 143) == 1, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 49); 
        tmp2 = *vector::borrow(&path, 44); 
        assert!(((tmp1 >> 3) * (tmp2 << 3)) == 4560, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 10); 
        assert!(((tmp1 >> 1) & 4) == 4, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 16); 
        assert!(((tmp1 >> 4) & 199) == 3, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 7); 
        tmp2 = *vector::borrow(&path, 43); 
        assert!(((tmp1 >> 1) * (tmp2 << 3)) == 48760, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 35); 
        tmp2 = *vector::borrow(&path, 0); 
        assert!(((tmp1 >> 1) * (tmp2 << 1)) == 3984, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 11); 
        tmp2 = *vector::borrow(&path, 46); 
        assert!(((tmp1 >> 1) * (tmp2 << 1)) == 5202, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 21); 
        tmp2 = *vector::borrow(&path, 11); 
        assert!(((tmp1 >> 2) * (tmp2 << 1)) == 4944, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 4); 
        tmp2 = *vector::borrow(&path, 35); 
        assert!(((tmp1 >> 1) * (tmp2 << 1)) == 3430, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 30); 
        tmp2 = *vector::borrow(&path, 39); 
        assert!(((tmp1 >> 1) * (tmp2 << 3)) == 46656, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 31); 
        assert!(((tmp1 >> 7) & 173) == 0, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 24); 
        tmp2 = *vector::borrow(&path, 28); 
        assert!(((tmp1 >> 2) * (tmp2 << 3)) == 7272, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 40); 
        assert!(((tmp1 >> 4) & 28) == 4, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 35); 
        assert!(((tmp1 >> 7) & 126) == 0, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 38); 
        tmp2 = *vector::borrow(&path, 20); 
        assert!(((tmp1 >> 2) * (tmp2 << 3)) == 11440, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 28); 
        tmp2 = *vector::borrow(&path, 0); 
        assert!(((tmp1 >> 3) * (tmp2 << 3)) == 7968, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 43); 
        assert!(((tmp1 >> 7) & 133) == 0, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 12); 
        tmp2 = *vector::borrow(&path, 39); 
        assert!(((tmp1 >> 2) * (tmp2 << 1)) == 4968, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 26); 
        tmp2 = *vector::borrow(&path, 43); 
        assert!(((tmp1 >> 1) * (tmp2 << 1)) == 13340, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 29); 
        assert!(((tmp1 >> 1) & 247) == 39, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 41); 
        assert!(((tmp1 >> 2) & 236) == 12, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 14); 
        tmp2 = *vector::borrow(&path, 8); 
        assert!(((tmp1 >> 3) * (tmp2 << 2)) == 2744, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 9); 
        tmp2 = *vector::borrow(&path, 45); 
        assert!(((tmp1 >> 2) * (tmp2 << 3)) == 10368, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 35); 
        assert!(((tmp1 >> 6) & 97) == 0, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 9); 
        tmp2 = *vector::borrow(&path, 27); 
        assert!(((tmp1 >> 2) * (tmp2 << 1)) == 2496, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 44); 
        tmp2 = *vector::borrow(&path, 47); 
        assert!(((tmp1 >> 3) * (tmp2 << 3)) == 4576, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 26); 
        assert!(((tmp1 >> 7) & 211) == 0, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 40); 
        assert!(((tmp1 >> 7) & 66) == 0, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 25); 
        assert!(((tmp1 >> 6) & 101) == 1, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 18); 
        tmp2 = *vector::borrow(&path, 43); 
        assert!(((tmp1 >> 1) * (tmp2 << 1)) == 11500, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 28); 
        assert!(((tmp1 >> 4) & 118) == 6, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 5); 
        assert!(((tmp1 >> 6) & 104) == 0, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 10); 
        assert!(((tmp1 >> 6) & 228) == 0, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 19); 
        tmp2 = *vector::borrow(&path, 35); 
        assert!(((tmp1 >> 3) * (tmp2 << 1)) == 588, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 50); 
        assert!(((tmp1 >> 3) & 205) == 13, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 19); 
        assert!(((tmp1 >> 4) & 172) == 0, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 48); 
        tmp2 = *vector::borrow(&path, 23); 
        assert!(((tmp1 >> 3) * (tmp2 << 2)) == 4560, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 27); 
        tmp2 = *vector::borrow(&path, 7); 
        assert!(((tmp1 >> 1) * (tmp2 << 3)) == 44512, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 13); 
        assert!(((tmp1 >> 7) & 75) == 0, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 14); 
        tmp2 = *vector::borrow(&path, 9); 
        assert!(((tmp1 >> 3) * (tmp2 << 2)) == 2744, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 7); 
        tmp2 = *vector::borrow(&path, 38); 
        assert!(((tmp1 >> 2) * (tmp2 << 2)) == 5408, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 13); 
        tmp2 = *vector::borrow(&path, 25); 
        assert!(((tmp1 >> 1) * (tmp2 << 3)) == 39520, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 8); 
        assert!(((tmp1 >> 5) & 205) == 1, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 26); 
        tmp2 = *vector::borrow(&path, 20); 
        assert!(((tmp1 >> 2) * (tmp2 << 3)) == 25520, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 2); 
        assert!(((tmp1 >> 6) & 68) == 0, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 23); 
        assert!(((tmp1 >> 4) & 85) == 5, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 36); 
        assert!(((tmp1 >> 7) & 158) == 0, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 9); 
        assert!(((tmp1 >> 7) & 5) == 0, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 16); 
        assert!(((tmp1 >> 5) & 240) == 0, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 4); 
        assert!(((tmp1 >> 6) & 123) == 1, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 11); 
        assert!(((tmp1 >> 5) & 149) == 1, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 3); 
        tmp2 = *vector::borrow(&path, 15); 
        assert!(((tmp1 >> 1) * (tmp2 << 1)) == 7980, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 31); 
        assert!(((tmp1 >> 3) & 138) == 2, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 4); 
        tmp2 = *vector::borrow(&path, 10); 
        assert!(((tmp1 >> 3) * (tmp2 << 2)) == 3520, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 6); 
        tmp2 = *vector::borrow(&path, 2); 
        assert!(((tmp1 >> 3) * (tmp2 << 2)) == 5880, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 30); 
        assert!(((tmp1 >> 7) & 182) == 0, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 16); 
        tmp2 = *vector::borrow(&path, 15); 
        assert!(((tmp1 >> 3) * (tmp2 << 3)) == 4560, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 21); 
        assert!(((tmp1 >> 7) & 159) == 0, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 3); 
        tmp2 = *vector::borrow(&path, 27); 
        assert!(((tmp1 >> 3) * (tmp2 << 3)) == 8320, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 41); 
        assert!(((tmp1 >> 5) & 43) == 1, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 44); 
        tmp2 = *vector::borrow(&path, 16); 
        assert!(((tmp1 >> 3) * (tmp2 << 1)) == 1144, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 13); 
        assert!(((tmp1 >> 1) & 70) == 4, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 11); 
        tmp2 = *vector::borrow(&path, 27); 
        assert!(((tmp1 >> 3) * (tmp2 << 1)) == 2496, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 2); 
        assert!(((tmp1 >> 3) & 2) == 0, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 0); 
        tmp2 = *vector::borrow(&path, 41); 
        assert!(((tmp1 >> 2) * (tmp2 << 3)) == 8320, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 14); 
        tmp2 = *vector::borrow(&path, 46); 
        assert!(((tmp1 >> 2) * (tmp2 << 3)) == 11424, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 45); 
        tmp2 = *vector::borrow(&path, 38); 
        assert!(((tmp1 >> 1) * (tmp2 << 3)) == 22464, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 11); 
        tmp2 = *vector::borrow(&path, 47); 
        assert!(((tmp1 >> 3) * (tmp2 << 1)) == 1248, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 44); 
        assert!(((tmp1 >> 4) & 226) == 0, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 7); 
        tmp2 = *vector::borrow(&path, 28); 
        assert!(((tmp1 >> 3) * (tmp2 << 3)) == 10504, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 15); 
        assert!(((tmp1 >> 6) & 98) == 0, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 40); 
        assert!(((tmp1 >> 1) & 13) == 9, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 22); 
        assert!(((tmp1 >> 6) & 84) == 0, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 12); 
        assert!(((tmp1 >> 5) & 72) == 0, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 8); 
        assert!(((tmp1 >> 5) & 165) == 1, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 45); 
        tmp2 = *vector::borrow(&path, 18); 
        assert!(((tmp1 >> 2) * (tmp2 << 3)) == 21600, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 2); 
        assert!(((tmp1 >> 3) & 129) == 1, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 36); 
        assert!(((tmp1 >> 3) & 90) == 8, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 28); 
        tmp2 = *vector::borrow(&path, 25); 
        assert!(((tmp1 >> 2) * (tmp2 << 1)) == 4750, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 3); 
        assert!(((tmp1 >> 1) & 225) == 32, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 29); 
        tmp2 = *vector::borrow(&path, 46); 
        assert!(((tmp1 >> 2) * (tmp2 << 3)) == 9384, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 36); 
        tmp2 = *vector::borrow(&path, 38); 
        assert!(((tmp1 >> 3) * (tmp2 << 1)) == 1352, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 26); 
        assert!(((tmp1 >> 3) & 163) == 2, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 30); 
        tmp2 = *vector::borrow(&path, 42); 
        assert!(((tmp1 >> 3) * (tmp2 << 1)) == 3146, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 48); 
        tmp2 = *vector::borrow(&path, 40); 
        assert!(((tmp1 >> 1) * (tmp2 << 1)) == 11900, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 39); 
        assert!(((tmp1 >> 6) & 91) == 1, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 50); 
        assert!(((tmp1 >> 4) & 36) == 4, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 27); 
        tmp2 = *vector::borrow(&path, 42); 
        assert!(((tmp1 >> 2) * (tmp2 << 3)) == 25168, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 34); 
        tmp2 = *vector::borrow(&path, 38); 
        assert!(((tmp1 >> 1) * (tmp2 << 2)) == 9984, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 12); 
        assert!(((tmp1 >> 3) & 70) == 2, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 5); 
        tmp2 = *vector::borrow(&path, 16); 
        assert!(((tmp1 >> 2) * (tmp2 << 2)) == 6240, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 38); 
        assert!(((tmp1 >> 6) & 250) == 0, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 43); 
        tmp2 = *vector::borrow(&path, 1); 
        assert!(((tmp1 >> 3) * (tmp2 << 3)) == 13104, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 22); 
        tmp2 = *vector::borrow(&path, 31); 
        assert!(((tmp1 >> 3) * (tmp2 << 3)) == 2304, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 20); 
        assert!(((tmp1 >> 6) & 172) == 0, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 0); 
        assert!(((tmp1 >> 2) & 124) == 20, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 8); 
        assert!(((tmp1 >> 1) & 24) == 24, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 18); 
        tmp2 = *vector::borrow(&path, 31); 
        assert!(((tmp1 >> 3) * (tmp2 << 2)) == 2304, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 19); 
        tmp2 = *vector::borrow(&path, 15); 
        assert!(((tmp1 >> 2) * (tmp2 << 3)) == 9880, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 2); 
        tmp2 = *vector::borrow(&path, 24); 
        assert!(((tmp1 >> 1) * (tmp2 << 1)) == 3952, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 29); 
        assert!(((tmp1 >> 4) & 14) == 4, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 33); 
        tmp2 = *vector::borrow(&path, 34); 
        assert!(((tmp1 >> 1) * (tmp2 << 2)) == 22504, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 0); 
        tmp2 = *vector::borrow(&path, 8); 
        assert!(((tmp1 >> 2) * (tmp2 << 1)) == 1960, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 38); 
        assert!(((tmp1 >> 5) & 215) == 1, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 7); 
        tmp2 = *vector::borrow(&path, 36); 
        assert!(((tmp1 >> 3) * (tmp2 << 1)) == 2860, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 44); 
        assert!(((tmp1 >> 3) & 252) == 8, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 18); 
        assert!(((tmp1 >> 7) & 48) == 0, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 42); 
        assert!(((tmp1 >> 1) & 9) == 8, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 1); 
        assert!(((tmp1 >> 3) & 30) == 14, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 38); 
        assert!(((tmp1 >> 3) & 154) == 2, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 42); 
        tmp2 = *vector::borrow(&path, 6); 
        assert!(((tmp1 >> 2) * (tmp2 << 3)) == 27600, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 29); 
        assert!(((tmp1 >> 5) & 30) == 2, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 45); 
        assert!(((tmp1 >> 5) & 151) == 3, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 27); 
        tmp2 = *vector::borrow(&path, 34); 
        assert!(((tmp1 >> 3) * (tmp2 << 2)) == 5044, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 0); 
        tmp2 = *vector::borrow(&path, 21); 
        assert!(((tmp1 >> 3) * (tmp2 << 3)) == 7920, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 18); 
        tmp2 = *vector::borrow(&path, 0); 
        assert!(((tmp1 >> 1) * (tmp2 << 2)) == 16600, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 36); 
        assert!(((tmp1 >> 7) & 46) == 0, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 14); 
        assert!(((tmp1 >> 2) & 181) == 20, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 19); 
        assert!(((tmp1 >> 1) & 149) == 16, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 1); 
        assert!(((tmp1 >> 1) & 16) == 16, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 11); 
        tmp2 = *vector::borrow(&path, 35); 
        assert!(((tmp1 >> 3) * (tmp2 << 3)) == 4704, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 39); 
        assert!(((tmp1 >> 6) & 73) == 1, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 47); 
        assert!(((tmp1 >> 2) & 17) == 1, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 13); 
        assert!(((tmp1 >> 1) & 161) == 32, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 45); 
        assert!(((tmp1 >> 4) & 50) == 2, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 41); 
        assert!(((tmp1 >> 3) & 241) == 0, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 9); 
        assert!(((tmp1 >> 4) & 54) == 2, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 23); 
        assert!(((tmp1 >> 3) & 11) == 11, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 50); 
        tmp2 = *vector::borrow(&path, 31); 
        assert!(((tmp1 >> 2) * (tmp2 << 2)) == 5952, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 24); 
        tmp2 = *vector::borrow(&path, 20); 
        assert!(((tmp1 >> 2) * (tmp2 << 3)) == 7920, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 43); 
        assert!(((tmp1 >> 2) & 58) == 24, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 15); 
        tmp2 = *vector::borrow(&path, 20); 
        assert!(((tmp1 >> 2) * (tmp2 << 2)) == 10120, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 31); 
        tmp2 = *vector::borrow(&path, 4); 
        assert!(((tmp1 >> 1) * (tmp2 << 1)) == 3360, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 16); 
        tmp2 = *vector::borrow(&path, 43); 
        assert!(((tmp1 >> 1) * (tmp2 << 2)) == 11960, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 45); 
        assert!(((tmp1 >> 4) & 201) == 0, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 10); 
        assert!(((tmp1 >> 5) & 190) == 2, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 34); 
        tmp2 = *vector::borrow(&path, 23); 
        assert!(((tmp1 >> 3) * (tmp2 << 1)) == 2280, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 11); 
        assert!(((tmp1 >> 4) & 171) == 2, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 16); 
        assert!(((tmp1 >> 3) & 110) == 6, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 5); 
        tmp2 = *vector::borrow(&path, 10); 
        assert!(((tmp1 >> 3) * (tmp2 << 3)) == 13200, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 27); 
        tmp2 = *vector::borrow(&path, 12); 
        assert!(((tmp1 >> 3) * (tmp2 << 2)) == 4940, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 45); 
        tmp2 = *vector::borrow(&path, 19); 
        assert!(((tmp1 >> 1) * (tmp2 << 2)) == 11232, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 3); 
        tmp2 = *vector::borrow(&path, 22); 
        assert!(((tmp1 >> 3) * (tmp2 << 1)) == 1020, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 41); 
        assert!(((tmp1 >> 7) & 124) == 0, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 48); 
        tmp2 = *vector::borrow(&path, 20); 
        assert!(((tmp1 >> 3) * (tmp2 << 1)) == 2640, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 43); 
        tmp2 = *vector::borrow(&path, 1); 
        assert!(((tmp1 >> 1) * (tmp2 << 2)) == 26676, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 4); 
        tmp2 = *vector::borrow(&path, 23); 
        assert!(((tmp1 >> 2) * (tmp2 << 3)) == 12920, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 7); 
        tmp2 = *vector::borrow(&path, 36); 
        assert!(((tmp1 >> 3) * (tmp2 << 2)) == 5720, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 20); 
        tmp2 = *vector::borrow(&path, 6); 
        assert!(((tmp1 >> 3) * (tmp2 << 1)) == 2990, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 17); 
        assert!(((tmp1 >> 2) & 139) == 3, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 0); 
        assert!(((tmp1 >> 6) & 56) == 0, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 20); 
        assert!(((tmp1 >> 6) & 135) == 1, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 20); 
        tmp2 = *vector::borrow(&path, 21); 
        assert!(((tmp1 >> 1) * (tmp2 << 2)) == 21780, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 14); 
        assert!(((tmp1 >> 4) & 63) == 7, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 30); 
        assert!(((tmp1 >> 7) & 187) == 0, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 23); 
        tmp2 = *vector::borrow(&path, 12); 
        assert!(((tmp1 >> 2) * (tmp2 << 1)) == 4370, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 48); 
        assert!(((tmp1 >> 1) & 171) == 34, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 2); 
        tmp2 = *vector::borrow(&path, 21); 
        assert!(((tmp1 >> 3) * (tmp2 << 3)) == 10296, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 19); 
        assert!(((tmp1 >> 7) & 100) == 0, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 12); 
        assert!(((tmp1 >> 6) & 121) == 1, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 41); 
        assert!(((tmp1 >> 2) & 71) == 5, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 2); 
        tmp2 = *vector::borrow(&path, 30); 
        assert!(((tmp1 >> 3) * (tmp2 << 2)) == 5668, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 50); 
        tmp2 = *vector::borrow(&path, 40); 
        assert!(((tmp1 >> 2) * (tmp2 << 3)) == 29512, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 36); 
        assert!(((tmp1 >> 2) & 76) == 8, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 46); 
        assert!(((tmp1 >> 6) & 163) == 0, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 8); 
        tmp2 = *vector::borrow(&path, 1); 
        assert!(((tmp1 >> 3) * (tmp2 << 1)) == 1404, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 9); 
        tmp2 = *vector::borrow(&path, 17); 
        assert!(((tmp1 >> 1) * (tmp2 << 2)) == 9120, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 15); 
        tmp2 = *vector::borrow(&path, 4); 
        assert!(((tmp1 >> 2) * (tmp2 << 2)) == 6440, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 8); 
        assert!(((tmp1 >> 4) & 117) == 1, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 2); 
        assert!(((tmp1 >> 4) & 119) == 6, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 0); 
        assert!(((tmp1 >> 3) & 144) == 0, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 9); 
        tmp2 = *vector::borrow(&path, 39); 
        assert!(((tmp1 >> 3) * (tmp2 << 3)) == 5184, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 4); 
        assert!(((tmp1 >> 2) & 143) == 1, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 34); 
        tmp2 = *vector::borrow(&path, 13); 
        assert!(((tmp1 >> 1) * (tmp2 << 3)) == 40320, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 17); 
        assert!(((tmp1 >> 2) & 45) == 5, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 5); 
        assert!(((tmp1 >> 5) & 112) == 0, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 34); 
        assert!(((tmp1 >> 3) & 250) == 8, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 22); 
        tmp2 = *vector::borrow(&path, 5); 
        assert!(((tmp1 >> 3) * (tmp2 << 1)) == 1476, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 43); 
        tmp2 = *vector::borrow(&path, 32); 
        assert!(((tmp1 >> 2) * (tmp2 << 1)) == 6552, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 29); 
        assert!(((tmp1 >> 7) & 120) == 0, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 32); 
        tmp2 = *vector::borrow(&path, 13); 
        assert!(((tmp1 >> 3) * (tmp2 << 2)) == 5880, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 8); 
        assert!(((tmp1 >> 6) & 206) == 0, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 17); 
        tmp2 = *vector::borrow(&path, 31); 
        assert!(((tmp1 >> 1) * (tmp2 << 2)) == 9024, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 5); 
        assert!(((tmp1 >> 7) & 215) == 0, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 3); 
        tmp2 = *vector::borrow(&path, 28); 
        assert!(((tmp1 >> 1) * (tmp2 << 3)) == 33936, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 30); 
        assert!(((tmp1 >> 7) & 205) == 0, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 12); 
        tmp2 = *vector::borrow(&path, 6); 
        assert!(((tmp1 >> 3) * (tmp2 << 3)) == 10120, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 16); 
        tmp2 = *vector::borrow(&path, 34); 
        assert!(((tmp1 >> 2) * (tmp2 << 1)) == 2522, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 2); 
        assert!(((tmp1 >> 4) & 10) == 2, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 19); 
        assert!(((tmp1 >> 5) & 7) == 1, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 34); 
        tmp2 = *vector::borrow(&path, 33); 
        assert!(((tmp1 >> 3) * (tmp2 << 2)) == 5568, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 24); 
        assert!(((tmp1 >> 4) & 215) == 2, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 44); 
        assert!(((tmp1 >> 1) & 249) == 41, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 21); 
        tmp2 = *vector::borrow(&path, 41); 
        assert!(((tmp1 >> 3) * (tmp2 << 3)) == 4992, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 8); 
        tmp2 = *vector::borrow(&path, 5); 
        assert!(((tmp1 >> 2) * (tmp2 << 3)) == 11808, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 21); 
        tmp2 = *vector::borrow(&path, 22); 
        assert!(((tmp1 >> 3) * (tmp2 << 2)) == 2448, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 14); 
        assert!(((tmp1 >> 3) & 142) == 14, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 40); 
        assert!(((tmp1 >> 4) & 117) == 5, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 37); 
        assert!(((tmp1 >> 1) & 236) == 44, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 12); 
        assert!(((tmp1 >> 7) & 27) == 0, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 43); 
        tmp2 = *vector::borrow(&path, 23); 
        assert!(((tmp1 >> 3) * (tmp2 << 3)) == 10640, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 6); 
        assert!(((tmp1 >> 7) & 147) == 0, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 41); 
        tmp2 = *vector::borrow(&path, 34); 
        assert!(((tmp1 >> 1) * (tmp2 << 3)) == 20176, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 3); 
        assert!(((tmp1 >> 1) & 181) == 32, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 18); 
        tmp2 = *vector::borrow(&path, 33); 
        assert!(((tmp1 >> 1) * (tmp2 << 2)) == 23200, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 4); 
        assert!(((tmp1 >> 1) & 1) == 1, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 46); 
        tmp2 = *vector::borrow(&path, 12); 
        assert!(((tmp1 >> 2) * (tmp2 << 2)) == 4560, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 10); 
        assert!(((tmp1 >> 5) & 55) == 3, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 39); 
        tmp2 = *vector::borrow(&path, 32); 
        assert!(((tmp1 >> 3) * (tmp2 << 3)) == 12168, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 27); 
        tmp2 = *vector::borrow(&path, 30); 
        assert!(((tmp1 >> 3) * (tmp2 << 3)) == 11336, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 32); 
        tmp2 = *vector::borrow(&path, 49); 
        assert!(((tmp1 >> 2) * (tmp2 << 2)) == 6148, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 28); 
        tmp2 = *vector::borrow(&path, 20); 
        assert!(((tmp1 >> 2) * (tmp2 << 1)) == 5500, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 33); 
        tmp2 = *vector::borrow(&path, 17); 
        assert!(((tmp1 >> 2) * (tmp2 << 3)) == 22040, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 12); 
        tmp2 = *vector::borrow(&path, 14); 
        assert!(((tmp1 >> 3) * (tmp2 << 2)) == 5060, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 33); 
        tmp2 = *vector::borrow(&path, 34); 
        assert!(((tmp1 >> 1) * (tmp2 << 3)) == 45008, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 26); 
        tmp2 = *vector::borrow(&path, 32); 
        assert!(((tmp1 >> 2) * (tmp2 << 2)) == 13572, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 47); 
        tmp2 = *vector::borrow(&path, 20); 
        assert!(((tmp1 >> 3) * (tmp2 << 2)) == 2640, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 16); 
        tmp2 = *vector::borrow(&path, 7); 
        assert!(((tmp1 >> 2) * (tmp2 << 2)) == 5564, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 39); 
        tmp2 = *vector::borrow(&path, 0); 
        assert!(((tmp1 >> 1) * (tmp2 << 2)) == 17928, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 31); 
        tmp2 = *vector::borrow(&path, 25); 
        assert!(((tmp1 >> 2) * (tmp2 << 1)) == 2280, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 47); 
        assert!(((tmp1 >> 6) & 221) == 0, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 22); 
        tmp2 = *vector::borrow(&path, 2); 
        assert!(((tmp1 >> 2) * (tmp2 << 2)) == 5040, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 44); 
        tmp2 = *vector::borrow(&path, 14); 
        assert!(((tmp1 >> 1) * (tmp2 << 2)) == 21620, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 8); 
        assert!(((tmp1 >> 6) & 123) == 0, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 18); 
        tmp2 = *vector::borrow(&path, 0); 
        assert!(((tmp1 >> 3) * (tmp2 << 1)) == 1992, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 38); 
        assert!(((tmp1 >> 2) & 162) == 0, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 49); 
        assert!(((tmp1 >> 2) & 39) == 5, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 33); 
        assert!(((tmp1 >> 2) & 24) == 24, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 18); 
        tmp2 = *vector::borrow(&path, 33); 
        assert!(((tmp1 >> 1) * (tmp2 << 1)) == 11600, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 48); 
        assert!(((tmp1 >> 4) & 224) == 0, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 27); 
        tmp2 = *vector::borrow(&path, 14); 
        assert!(((tmp1 >> 1) * (tmp2 << 3)) == 47840, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 45); 
        tmp2 = *vector::borrow(&path, 0); 
        assert!(((tmp1 >> 1) * (tmp2 << 1)) == 8964, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 34); 
        tmp2 = *vector::borrow(&path, 10); 
        assert!(((tmp1 >> 1) * (tmp2 << 1)) == 10560, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 45); 
        tmp2 = *vector::borrow(&path, 38); 
        assert!(((tmp1 >> 3) * (tmp2 << 3)) == 5408, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 35); 
        tmp2 = *vector::borrow(&path, 43); 
        assert!(((tmp1 >> 2) * (tmp2 << 1)) == 2760, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 39); 
        assert!(((tmp1 >> 4) & 10) == 2, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 29); 
        tmp2 = *vector::borrow(&path, 30); 
        assert!(((tmp1 >> 2) * (tmp2 << 1)) == 5014, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 23); 
        tmp2 = *vector::borrow(&path, 6); 
        assert!(((tmp1 >> 3) * (tmp2 << 1)) == 2530, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 45); 
        tmp2 = *vector::borrow(&path, 34); 
        assert!(((tmp1 >> 3) * (tmp2 << 1)) == 2522, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 26); 
        tmp2 = *vector::borrow(&path, 31); 
        assert!(((tmp1 >> 1) * (tmp2 << 3)) == 22272, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 6); 
        tmp2 = *vector::borrow(&path, 38); 
        assert!(((tmp1 >> 2) * (tmp2 << 3)) == 11648, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 26); 
        tmp2 = *vector::borrow(&path, 49); 
        assert!(((tmp1 >> 1) * (tmp2 << 1)) == 6148, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 45); 
        assert!(((tmp1 >> 4) & 136) == 0, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 37); 
        assert!(((tmp1 >> 7) & 168) == 0, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 16); 
        tmp2 = *vector::borrow(&path, 10); 
        assert!(((tmp1 >> 1) * (tmp2 << 1)) == 5720, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 34); 
        assert!(((tmp1 >> 2) & 193) == 0, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 40); 
        tmp2 = *vector::borrow(&path, 11); 
        assert!(((tmp1 >> 3) * (tmp2 << 3)) == 11536, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 1); 
        tmp2 = *vector::borrow(&path, 47); 
        assert!(((tmp1 >> 1) * (tmp2 << 1)) == 6032, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 25); 
        tmp2 = *vector::borrow(&path, 39); 
        assert!(((tmp1 >> 2) * (tmp2 << 2)) == 9936, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 45); 
        tmp2 = *vector::borrow(&path, 9); 
        assert!(((tmp1 >> 1) * (tmp2 << 3)) == 21168, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 17); 
        tmp2 = *vector::borrow(&path, 20); 
        assert!(((tmp1 >> 1) * (tmp2 << 1)) == 10340, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 1); 
        assert!(((tmp1 >> 6) & 155) == 1, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 48); 
        assert!(((tmp1 >> 4) & 220) == 4, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 24); 
        tmp2 = *vector::borrow(&path, 43); 
        assert!(((tmp1 >> 2) * (tmp2 << 3)) == 8280, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 26); 
        assert!(((tmp1 >> 7) & 193) == 0, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 30); 
        tmp2 = *vector::borrow(&path, 1); 
        assert!(((tmp1 >> 2) * (tmp2 << 1)) == 6318, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 31); 
        tmp2 = *vector::borrow(&path, 24); 
        assert!(((tmp1 >> 2) * (tmp2 << 1)) == 912, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 44); 
        assert!(((tmp1 >> 6) & 240) == 0, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 0); 
        tmp2 = *vector::borrow(&path, 9); 
        assert!(((tmp1 >> 3) * (tmp2 << 3)) == 3920, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 25); 
        assert!(((tmp1 >> 3) & 35) == 3, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 4); 
        assert!(((tmp1 >> 6) & 206) == 0, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 11); 
        tmp2 = *vector::borrow(&path, 13); 
        assert!(((tmp1 >> 3) * (tmp2 << 1)) == 2520, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 42); 
        tmp2 = *vector::borrow(&path, 22); 
        assert!(((tmp1 >> 1) * (tmp2 << 3)) == 24480, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 23); 
        assert!(((tmp1 >> 1) & 112) == 32, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 11); 
        tmp2 = *vector::borrow(&path, 0); 
        assert!(((tmp1 >> 2) * (tmp2 << 1)) == 4150, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 44); 
        tmp2 = *vector::borrow(&path, 39); 
        assert!(((tmp1 >> 3) * (tmp2 << 3)) == 9504, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 18); 
        tmp2 = *vector::borrow(&path, 10); 
        assert!(((tmp1 >> 1) * (tmp2 << 2)) == 22000, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 43); 
        assert!(((tmp1 >> 5) & 112) == 0, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 9); 
        assert!(((tmp1 >> 3) & 78) == 6, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 19); 
        tmp2 = *vector::borrow(&path, 17); 
        assert!(((tmp1 >> 3) * (tmp2 << 2)) == 2280, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 13); 
        tmp2 = *vector::borrow(&path, 16); 
        assert!(((tmp1 >> 1) * (tmp2 << 2)) == 10816, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 26); 
        assert!(((tmp1 >> 5) & 168) == 0, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 34); 
        tmp2 = *vector::borrow(&path, 4); 
        assert!(((tmp1 >> 3) * (tmp2 << 3)) == 6720, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 9); 
        tmp2 = *vector::borrow(&path, 2); 
        assert!(((tmp1 >> 3) * (tmp2 << 2)) == 2520, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 20); 
        assert!(((tmp1 >> 7) & 104) == 0, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 15); 
        assert!(((tmp1 >> 5) & 239) == 2, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 20); 
        tmp2 = *vector::borrow(&path, 23); 
        assert!(((tmp1 >> 3) * (tmp2 << 3)) == 9880, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 8); 
        assert!(((tmp1 >> 5) & 67) == 1, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 35); 
        tmp2 = *vector::borrow(&path, 18); 
        assert!(((tmp1 >> 1) * (tmp2 << 2)) == 9600, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 32); 
        assert!(((tmp1 >> 7) & 243) == 0, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 10); 
        tmp2 = *vector::borrow(&path, 11); 
        assert!(((tmp1 >> 2) * (tmp2 << 2)) == 11124, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 47); 
        assert!(((tmp1 >> 3) & 38) == 6, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 47); 
        assert!(((tmp1 >> 4) & 45) == 1, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 1); 
        tmp2 = *vector::borrow(&path, 30); 
        assert!(((tmp1 >> 1) * (tmp2 << 2)) == 25288, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 23); 
        tmp2 = *vector::borrow(&path, 19); 
        assert!(((tmp1 >> 3) * (tmp2 << 2)) == 2288, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 7); 
        tmp2 = *vector::borrow(&path, 24); 
        assert!(((tmp1 >> 3) * (tmp2 << 3)) == 3952, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 17); 
        assert!(((tmp1 >> 6) & 142) == 0, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 26); 
        assert!(((tmp1 >> 3) & 38) == 6, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 10); 
        tmp2 = *vector::borrow(&path, 18); 
        assert!(((tmp1 >> 1) * (tmp2 << 3)) == 44000, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 38); 
        tmp2 = *vector::borrow(&path, 6); 
        assert!(((tmp1 >> 2) * (tmp2 << 3)) == 11960, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 9); 
        tmp2 = *vector::borrow(&path, 23); 
        assert!(((tmp1 >> 2) * (tmp2 << 3)) == 9120, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 21); 
        tmp2 = *vector::borrow(&path, 19); 
        assert!(((tmp1 >> 3) * (tmp2 << 1)) == 1248, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 31); 
        tmp2 = *vector::borrow(&path, 46); 
        assert!(((tmp1 >> 3) * (tmp2 << 2)) == 1224, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 30); 
        assert!(((tmp1 >> 4) & 162) == 2, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 1); 
        tmp2 = *vector::borrow(&path, 11); 
        assert!(((tmp1 >> 3) * (tmp2 << 2)) == 5768, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 24); 
        tmp2 = *vector::borrow(&path, 8); 
        assert!(((tmp1 >> 2) * (tmp2 << 3)) == 3528, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 21); 
        assert!(((tmp1 >> 2) & 134) == 0, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 8); 
        tmp2 = *vector::borrow(&path, 2); 
        assert!(((tmp1 >> 1) * (tmp2 << 1)) == 5040, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 6); 
        assert!(((tmp1 >> 4) & 146) == 2, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 32); 
        assert!(((tmp1 >> 3) & 93) == 12, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 41); 
        tmp2 = *vector::borrow(&path, 16); 
        assert!(((tmp1 >> 1) * (tmp2 << 3)) == 10816, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 49); 
        assert!(((tmp1 >> 2) & 119) == 5, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 42); 
        tmp2 = *vector::borrow(&path, 44); 
        assert!(((tmp1 >> 2) * (tmp2 << 3)) == 22800, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 8); 
        tmp2 = *vector::borrow(&path, 19); 
        assert!(((tmp1 >> 1) * (tmp2 << 3)) == 9984, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 14); 
        tmp2 = *vector::borrow(&path, 17); 
        assert!(((tmp1 >> 1) * (tmp2 << 1)) == 10830, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 43); 
        tmp2 = *vector::borrow(&path, 7); 
        assert!(((tmp1 >> 1) * (tmp2 << 2)) == 24396, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 19); 
        tmp2 = *vector::borrow(&path, 15); 
        assert!(((tmp1 >> 2) * (tmp2 << 2)) == 4940, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 4); 
        assert!(((tmp1 >> 5) & 43) == 2, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 29); 
        assert!(((tmp1 >> 1) & 156) == 12, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 11); 
        tmp2 = *vector::borrow(&path, 22); 
        assert!(((tmp1 >> 3) * (tmp2 << 2)) == 2448, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 47); 
        assert!(((tmp1 >> 5) & 111) == 1, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 25); 
        assert!(((tmp1 >> 3) & 141) == 9, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 48); 
        tmp2 = *vector::borrow(&path, 33); 
        assert!(((tmp1 >> 2) * (tmp2 << 3)) == 23200, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 19); 
        tmp2 = *vector::borrow(&path, 45); 
        assert!(((tmp1 >> 2) * (tmp2 << 2)) == 5616, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 48); 
        assert!(((tmp1 >> 2) & 126) == 24, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 29); 
        tmp2 = *vector::borrow(&path, 33); 
        assert!(((tmp1 >> 3) * (tmp2 << 2)) == 5104, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 23); 
        assert!(((tmp1 >> 4) & 45) == 5, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 13); 
        tmp2 = *vector::borrow(&path, 24); 
        assert!(((tmp1 >> 2) * (tmp2 << 2)) == 3952, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 38); 
        assert!(((tmp1 >> 6) & 71) == 0, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 22); 
        tmp2 = *vector::borrow(&path, 45); 
        assert!(((tmp1 >> 3) * (tmp2 << 1)) == 1296, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 20); 
        tmp2 = *vector::borrow(&path, 10); 
        assert!(((tmp1 >> 2) * (tmp2 << 3)) == 23760, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 33); 
        tmp2 = *vector::borrow(&path, 29); 
        assert!(((tmp1 >> 2) * (tmp2 << 3)) == 22040, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 34); 
        assert!(((tmp1 >> 5) & 167) == 3, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 5); 
        assert!(((tmp1 >> 3) & 26) == 10, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 11); 
        tmp2 = *vector::borrow(&path, 1); 
        assert!(((tmp1 >> 2) * (tmp2 << 1)) == 5850, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 6); 
        assert!(((tmp1 >> 7) & 79) == 0, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 38); 
        assert!(((tmp1 >> 3) & 32) == 0, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 34); 
        tmp2 = *vector::borrow(&path, 0); 
        assert!(((tmp1 >> 3) * (tmp2 << 2)) == 3984, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 17); 
        assert!(((tmp1 >> 4) & 36) == 4, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 6); 
        tmp2 = *vector::borrow(&path, 9); 
        assert!(((tmp1 >> 3) * (tmp2 << 1)) == 1372, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 46); 
        assert!(((tmp1 >> 1) & 213) == 17, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 35); 
        tmp2 = *vector::borrow(&path, 19); 
        assert!(((tmp1 >> 2) * (tmp2 << 2)) == 2496, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 21); 
        assert!(((tmp1 >> 2) & 40) == 8, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 27); 
        assert!(((tmp1 >> 3) & 95) == 13, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 0); 
        tmp2 = *vector::borrow(&path, 26); 
        assert!(((tmp1 >> 2) * (tmp2 << 3)) == 18560, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 17); 
        assert!(((tmp1 >> 3) & 45) == 9, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 11); 
        assert!(((tmp1 >> 6) & 27) == 1, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 26); 
        tmp2 = *vector::borrow(&path, 36); 
        assert!(((tmp1 >> 2) * (tmp2 << 3)) == 25520, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 0); 
        tmp2 = *vector::borrow(&path, 46); 
        assert!(((tmp1 >> 3) * (tmp2 << 2)) == 2040, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 48); 
        tmp2 = *vector::borrow(&path, 0); 
        assert!(((tmp1 >> 1) * (tmp2 << 2)) == 16600, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 22); 
        assert!(((tmp1 >> 1) & 122) == 24, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 2); 
        tmp2 = *vector::borrow(&path, 48); 
        assert!(((tmp1 >> 2) * (tmp2 << 2)) == 10400, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 41); 
        tmp2 = *vector::borrow(&path, 30); 
        assert!(((tmp1 >> 1) * (tmp2 << 1)) == 5668, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 17); 
        assert!(((tmp1 >> 2) & 133) == 5, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 26); 
        tmp2 = *vector::borrow(&path, 16); 
        assert!(((tmp1 >> 3) * (tmp2 << 2)) == 2912, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 19); 
        tmp2 = *vector::borrow(&path, 42); 
        assert!(((tmp1 >> 3) * (tmp2 << 1)) == 1452, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 17); 
        tmp2 = *vector::borrow(&path, 38); 
        assert!(((tmp1 >> 1) * (tmp2 << 3)) == 19552, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 42); 
        tmp2 = *vector::borrow(&path, 30); 
        assert!(((tmp1 >> 2) * (tmp2 << 1)) == 6540, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 0); 
        tmp2 = *vector::borrow(&path, 15); 
        assert!(((tmp1 >> 2) * (tmp2 << 3)) == 15200, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 0); 
        tmp2 = *vector::borrow(&path, 37); 
        assert!(((tmp1 >> 1) * (tmp2 << 3)) == 31160, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 1); 
        tmp2 = *vector::borrow(&path, 47); 
        assert!(((tmp1 >> 1) * (tmp2 << 2)) == 12064, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 11); 
        tmp2 = *vector::borrow(&path, 1); 
        assert!(((tmp1 >> 2) * (tmp2 << 3)) == 23400, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 18); 
        tmp2 = *vector::borrow(&path, 47); 
        assert!(((tmp1 >> 2) * (tmp2 << 3)) == 10400, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 48); 
        assert!(((tmp1 >> 3) & 8) == 8, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 15); 
        assert!(((tmp1 >> 6) & 224) == 0, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 3); 
        tmp2 = *vector::borrow(&path, 16); 
        assert!(((tmp1 >> 3) * (tmp2 << 1)) == 1040, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 27); 
        assert!(((tmp1 >> 3) & 196) == 4, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 25); 
        tmp2 = *vector::borrow(&path, 32); 
        assert!(((tmp1 >> 3) * (tmp2 << 3)) == 10296, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 20); 
        assert!(((tmp1 >> 2) & 155) == 27, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 38); 
        assert!(((tmp1 >> 6) & 56) == 0, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 4); 
        assert!(((tmp1 >> 1) & 87) == 3, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 13); 
        tmp2 = *vector::borrow(&path, 36); 
        assert!(((tmp1 >> 3) * (tmp2 << 2)) == 5720, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 35); 
        assert!(((tmp1 >> 4) & 89) == 1, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 8); 
        assert!(((tmp1 >> 6) & 51) == 0, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 3); 
        tmp2 = *vector::borrow(&path, 46); 
        assert!(((tmp1 >> 3) * (tmp2 << 2)) == 2040, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 46); 
        tmp2 = *vector::borrow(&path, 6); 
        assert!(((tmp1 >> 3) * (tmp2 << 3)) == 5520, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 27); 
        tmp2 = *vector::borrow(&path, 17); 
        assert!(((tmp1 >> 2) * (tmp2 << 3)) == 19760, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 5); 
        tmp2 = *vector::borrow(&path, 8); 
        assert!(((tmp1 >> 2) * (tmp2 << 1)) == 2940, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 4); 
        assert!(((tmp1 >> 6) & 181) == 1, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 17); 
        tmp2 = *vector::borrow(&path, 18); 
        assert!(((tmp1 >> 3) * (tmp2 << 1)) == 2200, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 26); 
        tmp2 = *vector::borrow(&path, 42); 
        assert!(((tmp1 >> 1) * (tmp2 << 2)) == 28072, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 19); 
        tmp2 = *vector::borrow(&path, 3); 
        assert!(((tmp1 >> 3) * (tmp2 << 1)) == 1008, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 3); 
        tmp2 = *vector::borrow(&path, 10); 
        assert!(((tmp1 >> 1) * (tmp2 << 2)) == 18480, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 39); 
        tmp2 = *vector::borrow(&path, 29); 
        assert!(((tmp1 >> 3) * (tmp2 << 3)) == 9880, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 33); 
        assert!(((tmp1 >> 7) & 102) == 0, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 20); 
        tmp2 = *vector::borrow(&path, 0); 
        assert!(((tmp1 >> 1) * (tmp2 << 1)) == 9130, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 8); 
        assert!(((tmp1 >> 7) & 61) == 0, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 38); 
        tmp2 = *vector::borrow(&path, 26); 
        assert!(((tmp1 >> 1) * (tmp2 << 1)) == 6032, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 44); 
        tmp2 = *vector::borrow(&path, 38); 
        assert!(((tmp1 >> 1) * (tmp2 << 2)) == 9776, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 37); 
        assert!(((tmp1 >> 7) & 41) == 0, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 50); 
        tmp2 = *vector::borrow(&path, 22); 
        assert!(((tmp1 >> 3) * (tmp2 << 1)) == 1530, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 14); 
        assert!(((tmp1 >> 4) & 141) == 5, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 32); 
        assert!(((tmp1 >> 1) & 79) == 10, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 47); 
        tmp2 = *vector::borrow(&path, 39); 
        assert!(((tmp1 >> 2) * (tmp2 << 3)) == 11232, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 31); 
        tmp2 = *vector::borrow(&path, 0); 
        assert!(((tmp1 >> 2) * (tmp2 << 2)) == 3984, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 34); 
        tmp2 = *vector::borrow(&path, 49); 
        assert!(((tmp1 >> 1) * (tmp2 << 1)) == 5088, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 32); 
        assert!(((tmp1 >> 1) & 144) == 16, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 31); 
        tmp2 = *vector::borrow(&path, 18); 
        assert!(((tmp1 >> 1) * (tmp2 << 1)) == 4800, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 22); 
        tmp2 = *vector::borrow(&path, 20); 
        assert!(((tmp1 >> 3) * (tmp2 << 2)) == 2640, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 24); 
        assert!(((tmp1 >> 6) & 88) == 0, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 7); 
        assert!(((tmp1 >> 7) & 136) == 0, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 3); 
        assert!(((tmp1 >> 7) & 45) == 0, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 45); 
        assert!(((tmp1 >> 6) & 156) == 0, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 32); 
        assert!(((tmp1 >> 4) & 105) == 1, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 0); 
        assert!(((tmp1 >> 7) & 166) == 0, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 45); 
        assert!(((tmp1 >> 6) & 112) == 0, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 7); 
        assert!(((tmp1 >> 2) & 53) == 16, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 44); 
        tmp2 = *vector::borrow(&path, 9); 
        assert!(((tmp1 >> 2) * (tmp2 << 2)) == 4508, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 49); 
        assert!(((tmp1 >> 7) & 135) == 0, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 29); 
        assert!(((tmp1 >> 5) & 113) == 0, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 36); 
        tmp2 = *vector::borrow(&path, 31); 
        assert!(((tmp1 >> 1) * (tmp2 << 3)) == 21120, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 27); 
        assert!(((tmp1 >> 3) & 137) == 9, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 15); 
        tmp2 = *vector::borrow(&path, 20); 
        assert!(((tmp1 >> 1) * (tmp2 << 2)) == 20680, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 27); 
        tmp2 = *vector::borrow(&path, 6); 
        assert!(((tmp1 >> 3) * (tmp2 << 1)) == 2990, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 35); 
        assert!(((tmp1 >> 6) & 99) == 0, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 29); 
        tmp2 = *vector::borrow(&path, 27); 
        assert!(((tmp1 >> 3) * (tmp2 << 2)) == 4576, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 14); 
        tmp2 = *vector::borrow(&path, 48); 
        assert!(((tmp1 >> 1) * (tmp2 << 1)) == 11400, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 11); 
        tmp2 = *vector::borrow(&path, 2); 
        assert!(((tmp1 >> 3) * (tmp2 << 1)) == 2520, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 38); 
        assert!(((tmp1 >> 5) & 121) == 1, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 20); 
        assert!(((tmp1 >> 7) & 67) == 0, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 28); 
        assert!(((tmp1 >> 6) & 81) == 1, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 30); 
        assert!(((tmp1 >> 2) & 106) == 10, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 24); 
        tmp2 = *vector::borrow(&path, 32); 
        assert!(((tmp1 >> 2) * (tmp2 << 1)) == 2106, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 39); 
        tmp2 = *vector::borrow(&path, 37); 
        assert!(((tmp1 >> 1) * (tmp2 << 2)) == 20520, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 44); 
        assert!(((tmp1 >> 4) & 185) == 1, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 50); 
        assert!(((tmp1 >> 7) & 89) == 0, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 22); 
        tmp2 = *vector::borrow(&path, 35); 
        assert!(((tmp1 >> 3) * (tmp2 << 3)) == 2352, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 5); 
        assert!(((tmp1 >> 5) & 217) == 1, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 46); 
        assert!(((tmp1 >> 4) & 76) == 0, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 2); 
        assert!(((tmp1 >> 1) & 98) == 32, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 24); 
        assert!(((tmp1 >> 6) & 195) == 0, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 46); 
        assert!(((tmp1 >> 4) & 201) == 1, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 6); 
        tmp2 = *vector::borrow(&path, 2); 
        assert!(((tmp1 >> 2) * (tmp2 << 3)) == 23520, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 40); 
        assert!(((tmp1 >> 3) & 40) == 8, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 47); 
        assert!(((tmp1 >> 4) & 254) == 2, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 17); 
        tmp2 = *vector::borrow(&path, 19); 
        assert!(((tmp1 >> 1) * (tmp2 << 2)) == 9776, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 16); 
        assert!(((tmp1 >> 2) & 53) == 5, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 29); 
        assert!(((tmp1 >> 6) & 226) == 0, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 39); 
        assert!(((tmp1 >> 5) & 10) == 2, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 12); 
        tmp2 = *vector::borrow(&path, 19); 
        assert!(((tmp1 >> 3) * (tmp2 << 2)) == 2288, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 40); 
        tmp2 = *vector::borrow(&path, 24); 
        assert!(((tmp1 >> 2) * (tmp2 << 3)) == 8816, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 25); 
        tmp2 = *vector::borrow(&path, 41); 
        assert!(((tmp1 >> 1) * (tmp2 << 3)) == 19552, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 38); 
        assert!(((tmp1 >> 6) & 143) == 0, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 19); 
        assert!(((tmp1 >> 2) & 188) == 12, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 47); 
        assert!(((tmp1 >> 7) & 128) == 0, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 4); 
        tmp2 = *vector::borrow(&path, 42); 
        assert!(((tmp1 >> 3) * (tmp2 << 2)) == 3872, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 44); 
        assert!(((tmp1 >> 4) & 186) == 0, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 5); 
        tmp2 = *vector::borrow(&path, 44); 
        assert!(((tmp1 >> 2) * (tmp2 << 1)) == 5700, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 33); 
        tmp2 = *vector::borrow(&path, 25); 
        assert!(((tmp1 >> 1) * (tmp2 << 1)) == 11020, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 32); 
        assert!(((tmp1 >> 5) & 16) == 0, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 45); 
        assert!(((tmp1 >> 1) & 127) == 54, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 5); 
        tmp2 = *vector::borrow(&path, 10); 
        assert!(((tmp1 >> 3) * (tmp2 << 2)) == 6600, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 28); 
        assert!(((tmp1 >> 3) & 122) == 8, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 4); 
        assert!(((tmp1 >> 7) & 88) == 0, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 17); 
        tmp2 = *vector::borrow(&path, 9); 
        assert!(((tmp1 >> 1) * (tmp2 << 3)) == 18424, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 32); 
        assert!(((tmp1 >> 2) & 160) == 0, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 48); 
        assert!(((tmp1 >> 7) & 197) == 0, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 5); 
        tmp2 = *vector::borrow(&path, 19); 
        assert!(((tmp1 >> 1) * (tmp2 << 2)) == 12688, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 9); 
        tmp2 = *vector::borrow(&path, 6); 
        assert!(((tmp1 >> 3) * (tmp2 << 2)) == 2760, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 26); 
        tmp2 = *vector::borrow(&path, 37); 
        assert!(((tmp1 >> 1) * (tmp2 << 1)) == 11020, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 38); 
        assert!(((tmp1 >> 5) & 222) == 0, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 43); 
        tmp2 = *vector::borrow(&path, 38); 
        assert!(((tmp1 >> 2) * (tmp2 << 1)) == 2912, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 38); 
        assert!(((tmp1 >> 7) & 207) == 0, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 20); 
        assert!(((tmp1 >> 1) & 98) == 34, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 18); 
        tmp2 = *vector::borrow(&path, 5); 
        assert!(((tmp1 >> 1) * (tmp2 << 2)) == 24600, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 48); 
        assert!(((tmp1 >> 3) & 143) == 12, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 24); 
        tmp2 = *vector::borrow(&path, 22); 
        assert!(((tmp1 >> 2) * (tmp2 << 1)) == 918, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 24); 
        assert!(((tmp1 >> 1) & 118) == 18, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 1); 
        assert!(((tmp1 >> 1) & 1) == 0, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 33); 
        tmp2 = *vector::borrow(&path, 34); 
        assert!(((tmp1 >> 1) * (tmp2 << 2)) == 22504, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 28); 
        tmp2 = *vector::borrow(&path, 42); 
        assert!(((tmp1 >> 1) * (tmp2 << 2)) == 24200, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 37); 
        assert!(((tmp1 >> 5) & 31) == 2, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 44); 
        assert!(((tmp1 >> 5) & 135) == 2, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 34); 
        tmp2 = *vector::borrow(&path, 4); 
        assert!(((tmp1 >> 1) * (tmp2 << 3)) == 26880, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 49); 
        assert!(((tmp1 >> 7) & 118) == 0, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 21); 
        assert!(((tmp1 >> 7) & 190) == 0, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 14); 
        tmp2 = *vector::borrow(&path, 9); 
        assert!(((tmp1 >> 2) * (tmp2 << 3)) == 10976, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 15); 
        tmp2 = *vector::borrow(&path, 40); 
        assert!(((tmp1 >> 3) * (tmp2 << 2)) == 5236, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 9); 
        tmp2 = *vector::borrow(&path, 16); 
        assert!(((tmp1 >> 2) * (tmp2 << 1)) == 1248, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 7); 
        tmp2 = *vector::borrow(&path, 31); 
        assert!(((tmp1 >> 3) * (tmp2 << 3)) == 4992, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 33); 
        assert!(((tmp1 >> 7) & 35) == 0, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 38); 
        assert!(((tmp1 >> 5) & 83) == 1, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 24); 
        assert!(((tmp1 >> 4) & 229) == 0, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 30); 
        assert!(((tmp1 >> 3) & 104) == 8, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 12); 
        tmp2 = *vector::borrow(&path, 19); 
        assert!(((tmp1 >> 1) * (tmp2 << 3)) == 19552, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 13); 
        tmp2 = *vector::borrow(&path, 28); 
        assert!(((tmp1 >> 3) * (tmp2 << 3)) == 10504, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 47); 
        assert!(((tmp1 >> 2) & 204) == 12, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 1); 
        assert!(((tmp1 >> 1) & 27) == 26, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 50); 
        tmp2 = *vector::borrow(&path, 48); 
        assert!(((tmp1 >> 1) * (tmp2 << 3)) == 49600, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 42); 
        assert!(((tmp1 >> 2) & 126) == 30, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 49); 
        assert!(((tmp1 >> 5) & 205) == 1, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 48); 
        tmp2 = *vector::borrow(&path, 29); 
        assert!(((tmp1 >> 1) * (tmp2 << 1)) == 9500, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 33); 
        tmp2 = *vector::borrow(&path, 42); 
        assert!(((tmp1 >> 2) * (tmp2 << 2)) == 14036, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 6); 
        tmp2 = *vector::borrow(&path, 7); 
        assert!(((tmp1 >> 1) * (tmp2 << 2)) == 24396, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 32); 
        assert!(((tmp1 >> 3) & 177) == 0, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 20); 
        tmp2 = *vector::borrow(&path, 2); 
        assert!(((tmp1 >> 1) * (tmp2 << 1)) == 11550, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 13); 
        assert!(((tmp1 >> 6) & 239) == 1, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 19); 
        tmp2 = *vector::borrow(&path, 29); 
        assert!(((tmp1 >> 2) * (tmp2 << 2)) == 4940, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 38); 
        assert!(((tmp1 >> 4) & 208) == 0, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 12); 
        assert!(((tmp1 >> 1) & 224) == 32, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 15); 
        assert!(((tmp1 >> 7) & 92) == 0, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 40); 
        assert!(((tmp1 >> 7) & 21) == 0, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 6); 
        tmp2 = *vector::borrow(&path, 32); 
        assert!(((tmp1 >> 2) * (tmp2 << 3)) == 26208, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 1); 
        tmp2 = *vector::borrow(&path, 7); 
        assert!(((tmp1 >> 2) * (tmp2 << 1)) == 6206, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 8); 
        tmp2 = *vector::borrow(&path, 20); 
        assert!(((tmp1 >> 2) * (tmp2 << 3)) == 10560, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 16); 
        assert!(((tmp1 >> 7) & 246) == 0, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 27); 
        assert!(((tmp1 >> 6) & 31) == 1, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 5); 
        tmp2 = *vector::borrow(&path, 4); 
        assert!(((tmp1 >> 3) * (tmp2 << 2)) == 4200, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 28); 
        tmp2 = *vector::borrow(&path, 21); 
        assert!(((tmp1 >> 2) * (tmp2 << 3)) == 19800, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 13); 
        tmp2 = *vector::borrow(&path, 32); 
        assert!(((tmp1 >> 3) * (tmp2 << 1)) == 3042, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 22); 
        tmp2 = *vector::borrow(&path, 30); 
        assert!(((tmp1 >> 2) * (tmp2 << 3)) == 10464, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 43); 
        tmp2 = *vector::borrow(&path, 22); 
        assert!(((tmp1 >> 3) * (tmp2 << 2)) == 2856, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 48); 
        assert!(((tmp1 >> 2) & 114) == 16, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 32); 
        assert!(((tmp1 >> 6) & 203) == 1, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 6); 
        tmp2 = *vector::borrow(&path, 44); 
        assert!(((tmp1 >> 3) * (tmp2 << 1)) == 2660, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 1); 
        assert!(((tmp1 >> 2) & 195) == 1, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 4); 
        tmp2 = *vector::borrow(&path, 7); 
        assert!(((tmp1 >> 2) * (tmp2 << 3)) == 14552, ErrInvalidPath); 

        tmp1 = *vector::borrow(&path, 4); 
        tmp2 = *vector::borrow(&path, 50); 
        assert!(((tmp1 >> 3) * (tmp2 << 3)) == 8000, ErrInvalidPath); 

        let correct : vector<u8> = vector[67, 111, 114, 114, 101, 99, 116, 33];
        debug::print(&correct);
        
    }

}