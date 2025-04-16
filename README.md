# melange-bitcoin-lib

[Melange](https://melange.re) bindings for [bitcoinjs-lib](https://github.com/bitcoinjs/bitcoinjs-lib).

> [!WARNING]
> melange-bitcoin-lib is a work in progress. It is not ready for production use.

## Installation

pin `melange-bitcoin-lib` inside your `dune-project` file:

```lisp
(pin
 (url "git+https://github.com/0x6A6471/melange-bitcion-lib")
 (package (name melange-bitcoin-lib)))
```

add `melange-bitcoin-lib` to depends in your package stanza:

```lisp
(depends melange-bitcoin-lib)
```

build:

```sh
dune pkg lock
dune build
```

## Features

### networks
- [x] mainnet
- [x] testnet
- [x] regtest

### psbt 
- [x] fromBase64
- [x] fromHex(data, opts)
- [x] txInputs (getTxInputs)
- [x] txOutputs (getTxOutputs)

### push_data
- [x] encodingLength
- [x] encode
- [x] decode

### script
- [x] toASM

