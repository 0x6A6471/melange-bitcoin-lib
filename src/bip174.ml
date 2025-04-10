type psbt_input = {
  redeemScript : Js.Typed_array.Uint8Array.t option;
  witnessScript : Js.Typed_array.Uint8Array.t option;
}

type data = { inputs : psbt_input array }
type t = { data : data; opts : Types.Psbt.psbt_opts }
