(*
 * This module defines the network configurations for Bitcoin and its variants, including message prefixes,
 * Bech32 address format, BIP32 key derivation prefixes, and other address-related configurations.
 * It supports Bitcoin, Bitcoin testnet, and Bitcoin regtest networks.
 *
 * Additional information on address prefixes can be found here:
 * - https://en.bitcoin.it/wiki/List_of_address_prefixes
 *
 * @packageDocumentation
 *)
type bip32 = { public : int; private_ : int }

type t = {
  message_prefix : string;
  bech32 : string;
  bip32 : bip32;
  pub_key_hash : int;
  script_hash : int;
  wif : int;
}
