(*
 * Calculates the encoding length of a number used for push data in Bitcoin transactions.
 * @param i The number to calculate the encoding length for.
 * @return [int] 
 *)
external encodingLength : int -> int = "encodingLength"
[@@mel.module "bitcoinjs-lib"] [@@mel.scope "pushData"]

(*
 * Encodes a number into a buffer using a variable-length encoding scheme.
 * The encoded buffer is written starting at the specified offset.
 * Returns the size of the encoded buffer.
 *
 * @param buffer - The buffer to write the encoded data into.
 * @param num - The number to encode.
 * @param offset - The offset at which to start writing the encoded buffer.
 * @returns [int] The size of the encoded buffer.
 *)

external encode : Js.Typed_array.Uint8Array.t -> int -> int -> int = "encode"
[@@mel.module "bitcoinjs-lib"] [@@mel.scope "encode"]

type decode_obj = { opcode : int; number : int; size : int }
type decode_result = Decoded of decode_obj | Null

(*
 * Decodes a buffer and returns information about the opcode, number, and size.
 * @param buffer - The buffer to decode.
 * @param offset - The offset within the buffer to start decoding.
 * @return [decode_result], [Null] if decoding fails.
 *)
external decode : Js.Typed_array.Uint8Array.t -> int -> decode_result = "decode"
[@@mel.module "bitcoinjs-lib"] [@@mel.scope "decode"]
