type chunk = Buffer of Js.Typed_array.Uint8Array.t | Opcode of int

type chunks =
  | BufferChunks of Js.Typed_array.Uint8Array.t
  | StackChunks of chunk array

(*
 * Converts the given chunks into an ASM (Assembly) string representation.
 * If the chunks parameter is a Buffer, it will be decompiled into a Stack before conversion.
 * @param chunks - The chunks to convert into ASM.
 * @return [string] The ASM string representation of the chunks.
 *)
external toASM' : 'a -> string = "toASM"
[@@mel.module "bitcoinjs-lib"] [@@mel.scope "script"]

let toASM = function
  | BufferChunks buffer -> toASM' buffer
  | StackChunks stack ->
      let js_array =
        Js.Array.map
          ~f:(function Buffer b -> Obj.magic b | Opcode i -> Obj.magic i)
          stack
      in
      toASM' js_array
