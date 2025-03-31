(*
 * This module defines the network configurations for Bitcoin and its variants, including message prefixes,
 * Bech32 address format, BIP32 key derivation prefixes, and other address-related configurations.
 * It supports Bitcoin, Bitcoin testnet, and Bitcoin regtest networks.
 *
 * Additional information on address prefixes can be found here:
 * - https://en.bitcoin.it/wiki/List_of_address_prefixes
 *)

type bip32 = { _public : int; _private : int }

type t = {
  message_prefix : string;
  bech32 : string;
  bip32 : bip32;
  pub_key_hash : int;
  script_hash : int;
  wif : int;
}

let mainnet : t =
  {
    (* The message prefix used for signing Bitcoin messages.*)
    message_prefix = "\x18Bitcoin Signed Message:\n";
    (* The Bech32 prefix used for Bitcoin addresses.*)
    bech32 = "bc";
    (* The BIP32 key prefixes for Bitcoin.*)
    bip32 =
      {
        (* The public key prefix for BIP32 extended public keys. *)
        _public = 0x0488b21e;
        (* The private key prefix for BIP32 extended private keys. *)
        _private = 0x0488ade4;
      };
    (* The prefix for Bitcoin public key hashes. *)
    pub_key_hash = 0x00;
    (* The prefix for Bitcoin script hashes. *)
    script_hash = 0x05;
    (* The prefix for Bitcoin Wallet Import Format (WIF) private keys. *)
    wif = 0x80;
  }

let regtest : t =
  {
    message_prefix = "\x18Bitcoin Signed Message:\n";
    bech32 = "bcrt";
    bip32 = { _public = 0x043587cf; _private = 0x04358394 };
    pub_key_hash = 0x6f;
    script_hash = 0xc4;
    wif = 0xef;
  }

let testnet : t =
  {
    message_prefix = "\x18Bitcoin Signed Message:\n";
    bech32 = "tb";
    bip32 = { _public = 0x043587cf; _private = 0x04358394 };
    pub_key_hash = 0x6f;
    script_hash = 0xc4;
    wif = 0xef;
  }
