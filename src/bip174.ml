type input_output_counts = { inputCount : int; outputCount : int }

type 'a transaction = {
  getInputOutputCounts : unit -> input_output_counts;
  addInput : 'a -> unit;
  addOutput : 'a -> unit;
  toBuffer : unit -> Js.Typed_array.Uint8Array.t;
}

type key_value = {
  key : Js.Typed_array.Uint8Array.t;
  value : Js.Typed_array.Uint8Array.t;
}

type global_xpub = {
  extendedPubkey : Js.Typed_array.Uint8Array.t;
  masterFingerprint : Js.Typed_array.Uint8Array.t;
  path : string;
}

type 'a psbt_global = {
  unsignedTx : 'a transaction;
  unkownKeyVals : key_value array option;
  globalXpub : global_xpub array option;
}

type partial_sig = {
  pubkey : Js.Typed_array.Uint8Array.t;
  signature : Js.Typed_array.Uint8Array.t;
}

type witness_utxo = {
  script : Js.Typed_array.Uint8Array.t;
  value : Js.Bigint.t;
}

type bip32_derivation = {
  masterFingerprint : Js.Typed_array.Uint8Array.t;
  pubkey : Js.Typed_array.Uint8Array.t;
  path : string;
}

type tap_bip32_derivation = {
  masterFingerprint : Js.Typed_array.Uint8Array.t;
  pubkey : Js.Typed_array.Uint8Array.t;
  path : string;
  leafHashes : Js.Typed_array.Uint8Array.t array;
}

type tap_script = { leafVersion : int; script : Js.Typed_array.Uint8Array.t }

type tap_script_sig = {
  pubkey : Js.Typed_array.Uint8Array.t;
  signature : Js.Typed_array.Uint8Array.t;
  leafHash : Js.Typed_array.Uint8Array.t;
}

type tap_leaf_script = {
  leafVersion : int;
  script : Js.Typed_array.Uint8Array.t;
  controlBlock : Js.Typed_array.Uint8Array.t;
}

type psbt_input = {
  partialSig : partial_sig option;
  nonWitnessUtxo : Js.Typed_array.Uint8Array.t option;
  witnessUtxo : witness_utxo option;
  sighashType : int option;
  redeemScript : Js.Typed_array.Uint8Array.t option;
  witnessScript : Js.Typed_array.Uint8Array.t option;
  bip32Derivation : bip32_derivation array option;
  finalScriptSig : Js.Typed_array.Uint8Array.t option;
  finalScriptWitness : Js.Typed_array.Uint8Array.t option;
  porCommitment : string option;
  tapKeySig : Js.Typed_array.Uint8Array.t option;
  tapScriptSig : tap_script_sig array option;
  tapLeafScript : Js.Typed_array.Uint8Array.t array option;
  tapBip32Derivation : tap_bip32_derivation array option;
  tapInternalKey : Js.Typed_array.Uint8Array.t option;
  tapMerkleRoot : Js.Typed_array.Uint8Array.t option;
  uknownKeyVals : key_value array option;
}

type tap_leaf = {
  leafVersion : int;
  script : Js.Typed_array.Uint8Array.t;
  depth : int;
}

type tap_tree = { leaves : tap_leaf array }

type psbt_output = {
  redeemScript : Js.Typed_array.Uint8Array.t option;
  witnessScript : Js.Typed_array.Uint8Array.t option;
  bip32Derivation : bip32_derivation array option;
  tapTree : tap_tree option;
  tapInternalKey : Js.Typed_array.Uint8Array.t option;
}

type 'a data = {
  inputs : psbt_input array;
  outputs : psbt_output array;
  globalMap : 'a psbt_global;
}

type 'a t = { data : 'a data; opts : Types.Psbt.psbt_opts }
