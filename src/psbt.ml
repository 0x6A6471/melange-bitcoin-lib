type hash_input = String of string | Bytes of Js.uint8Array

type transaction_input = {
  hash : hash_input;
  index : int;
  sequence : int option;
}

type psbt_tx_input = { hash : bytes; index : int; sequence : int option }
type transaction_output = { script : Js.uint8Array; value : Js.bigint }

type psbt_tx_output = {
  script : Js.uint8Array;
  value : Js.bigint;
  address : string option;
}

type t
type psbt_opts = { network : Network.t option; maximum_fee_rate : float option }

let default_opts = { network = None; maximum_fee_rate = None }

external fromHex : string -> ?psbt_opts:psbt_opts -> unit -> t = "fromHex"
[@@mel.module "bitcoinjs-lib"] [@@mel.scope "Psbt"]

external getTxOutputs : t -> psbt_tx_output array = "txOutputs" [@@mel.get]
