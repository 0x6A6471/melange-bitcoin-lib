type hash = String of string | Bytes of Js.uint8Array
type transaction_input = { hash : hash; index : int; sequence : int option }

type psbt_tx_input = {
  hash : Js.uint8Array;
  index : int;
  sequence : int option;
}

type transaction_output = { script : Js.uint8Array; value : Js.bigint }

type psbt_tx_output = {
  address : string option;
  script : Js.Typed_array.Uint8Array.t;
  value : Js.bigint;
}

type t

type psbt_opts = {
  network : Networks.t option;
  maximum_fee_rate : float option; [@mel.as "maximumFeeRate"]
}

let default_opts = { network = None; maximum_fee_rate = None }

external fromHex : string -> ?psbt_opts:psbt_opts -> unit -> t = "fromHex"
[@@mel.module "bitcoinjs-lib"] [@@mel.scope "Psbt"]

external getTxInputs : t -> psbt_tx_input array = "txInputs" [@@mel.get]
external getTxOutputs : t -> psbt_tx_output array = "txOutputs" [@@mel.get]
