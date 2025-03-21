(lang dune 3.18)

(using melange 0.1)

(name melange-bitcoin-lib)

(generate_opam_files true)

(source
 (github 0x6A6471/melange-bitcoin-lib))

(authors "0x6A6471 <0x6A6471@proton.me>")

(maintainers "0x6A6471 <0x6A6471@proton.me>")

(package
 (name melange-bitcoin-lib)
 (synopsis "A short synopsis")
 (description "A longer description")
 (depends 
   ocaml dune melange
   ;; dev tools
   ocamlformat ocaml-lsp-server)
 (tags
  ("bitcion")))

