type chunk = Buffer of Js.Typed_array.Uint8Array.t | Opcode of int

type chunks =
  | BufferChunks of Js.Typed_array.Uint8Array.t
  | StackChunks of chunk array

external toASM : chunks -> string = "toASM"
[@@mel.module "bitcoinjs-lib"] [@@mel.scope "script"]
