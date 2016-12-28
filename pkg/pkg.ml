#!/usr/bin/env ocaml
#use "topfind"
#require "topkg"
open Topkg

let metas = [
  Pkg.meta_file ~install:false "pkg/META";
  Pkg.meta_file ~install:false "pkg/META.lwt";
]

let opams =
  let opam no_lint name =
    Pkg.opam_file ~lint_deps_excluding:(Some no_lint) ~install:false name
  in
  [
  opam ["lwt"; "mirage-fs"; "cstruct"; "result"] "opam";
  opam ["fmt"; "mirage-device"; "result"] "mirage-fs-lwt.opam";
  ]

let () =
  Pkg.describe ~opams ~metas "mirage-fs" @@ fun c ->
  match Conf.pkg_name c with
  | "mirage-fs" ->
    Ok [ Pkg.lib "pkg/META";
         Pkg.mllib "src/mirage-fs.mllib" ]
  | "mirage-fs-lwt" ->
    Ok [ Pkg.lib "pkg/META.lwt" ~dst:"META";
         Pkg.mllib "lwt/mirage-fs-lwt.mllib" ]
  | other ->
    R.error_msgf "unknown package name: %s" other
