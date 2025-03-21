type t
type psbt_opts = { network : Network.t option; maximum_fee_rate : float option }

let default_opts = { network = None; maximum_fee_rate = None }

external fromHex : string -> ?psbt_opts:psbt_opts -> t = "fromHex"
[@@mel.module "bitcoinjs-lib"] [@@mel.scope "Psbt"]
