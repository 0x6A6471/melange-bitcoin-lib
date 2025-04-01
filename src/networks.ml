(*
 * This module defines the network configurations for Bitcoin and its variants, including message prefixes,
 * Bech32 address format, BIP32 key derivation prefixes, and other address-related configurations.
 * It supports Bitcoin, Bitcoin testnet, and Bitcoin regtest networks.
 *
 * Additional information on address prefixes can be found here:
 * - https://en.bitcoin.it/wiki/List_of_address_prefixes
 *)

type bip32 = private {
  public : int; [@mel.as "public"]
  private_ : int; [@mel.as "private"]
}

type t = {
  message_prefix : string; [@mel.as "messagePrefix"]
  bech32 : string;
  bip32 : bip32;
  pub_key_hash : int; [@mel.as "pubKeyHash"]
  script_hash : int; [@mel.as "scriptHash"]
  wif : int;
}

external mainnet : t = "bitcoin"
[@@mel.module "bitcoinjs-lib"] [@@mel.scope "networks"]

external testnet : t = "testnet"
[@@mel.module "bitcoinjs-lib"] [@@mel.scope "networks"]

external regtest : t = "regtest"
[@@mel.module "bitcoinjs-lib"] [@@mel.scope "networks"]
