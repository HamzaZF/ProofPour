use dep::std;
use dep::std::collections::vec::Vec;

use crate::merkle_tree::sibling;

struct Record {
    a_pk: [u8; 32],
    //payload_type: u8,
    payload_value: Field,
    rho: [u8; 32],//Field,
    r: [u8; 32],
    s: [u8; 32],
    cm: [u8; 32], //Poseidon
}

struct AddrSk{
    a_sk: [u8; 32],
    sk_enc: Field,
}

struct AddrPk{
    a_pk: [u8; 32],
    pk_enc: Field,
}

struct x {
    rt: [u8; 32], 
    sn_1_old: [u8; 32], 
    sn_2_old: [u8; 32], 
    cm_1_new: [u8; 32], 
    cm_2_new: [u8; 32], 
    v_pub: Field, 
    h_sig: [u8; 32], 
    h_1: [u8; 32], 
    h_2: [u8; 32],
}

struct a {
    path_1_index: Field, 
    path_1_siblings : [sibling::Sibling; 2],
    path_2_index: Field, 
    path_2_siblings : [sibling::Sibling; 2],
    c_1_old: Record, 
    c_2_old: Record, 
    addr_sk_1_old: AddrSk, 
    addr_sk_2_old: AddrSk, 
    c_1_new: Record, 
    c_2_new: Record,
}
