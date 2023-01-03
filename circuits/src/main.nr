use dep::std;

fn main(secret: [u8; 5], hash: pub [u8; 32]) {
    let hash_s = std::hash::sha256(secret);

    constrain hash_s == hash;
}
