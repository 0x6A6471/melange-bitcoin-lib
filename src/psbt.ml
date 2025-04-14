type hash = String of string | Bytes of Js.Typed_array.Uint8Array.t
type transaction_input = { hash : hash; index : int; sequence : int option }

type psbt_tx_input = {
  hash : Js.Typed_array.Uint8Array.t;
  index : int;
  sequence : int option;
}

type transaction_output = {
  script : Js.Typed_array.Uint8Array.t;
  value : Js.Bigint.t;
}

type psbt_tx_output = {
  address : string option;
  script : Js.Typed_array.Uint8Array.t;
  value : Js.Bigint.t;
}

type 'a t = 'a Bip174.t

external fromBase64 : string -> ?psbt_opts:Types.Psbt.psbt_opts -> unit -> 'a t
  = "fromBase64"
[@@mel.module "bitcoinjs-lib"] [@@mel.scope "Psbt"]

external fromHex : string -> ?psbt_opts:Types.Psbt.psbt_opts -> unit -> 'a t
  = "fromHex"
[@@mel.module "bitcoinjs-lib"] [@@mel.scope "Psbt"]

external getTxInputs : 'a t -> psbt_tx_input array = "txInputs" [@@mel.get]
external getTxOutputs : 'a t -> psbt_tx_output array = "txOutputs" [@@mel.get]
