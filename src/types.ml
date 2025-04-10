module Psbt = struct
  type psbt_opts = {
    network : Networks.t option;
    maximum_fee_rate : float option; [@mel.as "maximumFeeRate"]
  }

  let default_opts = { network = None; maximum_fee_rate = None }
end
