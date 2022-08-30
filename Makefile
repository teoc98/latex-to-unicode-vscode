CODE_SNIPPETS_FOLDER="${HOME}/.var/app/com.vscodium.codium/config/VSCodium/User/snippets/"
CODE_SNIPPETS_FILENAME=LaTeX-to-Unicode.code-snippets

.PHONY=clean cleanall

all: $(CODE_SNIPPETS_FILENAME)

generator.out:
	ocamlc default_bindings_src.ml -o generator.out

symbol_list: generator.out
	./generator.out "$@"

$(CODE_SNIPPETS_FILENAME): symbol_list generate_code_snippets.py
	< symbol_list python generate_code_snippets.py > $@

clean:
	rm -f generator.out \
	default_bindings_src.cmi default_bindings_src.cmo

cleanall: clean
	rm -f $(CODE_SNIPPETS_FILENAME) symbol_list

install: $(CODE_SNIPPETS_FILENAME)
	cp $(CODE_SNIPPETS_FILENAME) $(CODE_SNIPPETS_FOLDER)
