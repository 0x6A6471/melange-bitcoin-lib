type input = {
  hash : Js.Typed_array.Uint8Array.t;
  index : int;
  script : Js.Typed_array.Uint8Array.t;
  sequence : int;
  witness : Js.Typed_array.Uint8Array.t array;
}

type output = { script : Js.Typed_array.Uint8Array.t; value : Js.Bigint.t }

type t = {
  version : int;
  locktime : int;
  ins : input array;
  outs : output array;
}

(* static methods *)
external fromHex : string -> t = "fromHex"
[@@mel.module "bitcoinjs-lib"] [@@mel.scope "Transaction"]

(* instance methods *)
external getId : t -> string = "getId" [@@mel.send]
