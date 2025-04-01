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
