type t = {
  message_prefix : string;
  bech32 : string;
  bip32 : bip32;
  pub_key_hash : int;
  script_hash : int;
  wif : int;
}

and bip32

val mainnet : t
val testnet : t
val regtest : t
