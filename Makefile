all:
	ocaml pkg/pkg.ml build -n mirage-fs -q
	ocaml pkg/pkg.ml build -n mirage-fs-lwt -q

clean:
	ocaml pkg/pkg.ml clean -n mirage-fs -q
	ocaml pkg/pkg.ml clean -n mirage-fs-lwt -q
