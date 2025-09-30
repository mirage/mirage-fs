# mirage-fs — MirageOS signatures for filesystem devices (DEPRECATED)

`mirage-fs` is deprecated as of `mirage` release 4.3.0. For a read-write storage interface, see [mirage-kv](https://github.com/mirage/mirage-kv), which provides `Mirage_kv.RW`.

The historical README is included below.

## Summary

mirage-fs provides the `[Mirage_fs.S][fs]` signature
the MirageOS filesystem devices should implement.

[fs]: http://mirage.github.io/mirage-fs/Mirage_fs.html

## Installation

mirage-fs can be installed with `opam`:

    opam install mirage-fs

If you don't use `opam` consult the [`opam`](opam) file for build
instructions.

## Documentation

The documentation and API reference is generated from the source
interfaces. It can be consulted [online][doc] or via `odig doc
mirage-fs`.

[doc]: https://mirage.github.io/mirage-fs/mirage-fs

## License

mirage-fs is distributed under the ISC license, see the [LICENSE.md] file for its text.

[LICENSE.md]: ./LICENSE.md
