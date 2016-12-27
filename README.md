## mirage-fs — MirageOS signatures for filesystem devices

mirage-fs is TODO

mirage-fs is distributed under the ISC license.

Homepage: https://github.com/samoht/mirage-fs

## Installation

mirage-fs can be installed with `opam`:

    opam install mirage-fs

If you don't use `opam` consult the [`opam`](opam) file for build
instructions.

## Documentation

The documentation and API reference is generated from the source
interfaces. It can be consulted [online][doc] or via `odig doc
mirage-fs`.

[doc]: https://samoht.github.io/mirage-fs/

## Sample programs

If you installed mirage-fs with `opam` sample programs are located in
the directory `opam var mirage-fs:doc`.

In the distribution sample programs and tests are located in the
[`test`](test) directory of the distribution. They can be built and run
with:

    topkg build --tests true && topkg test
