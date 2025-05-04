bin/demo: src/main.c
	nix-build default.nix

PHONY: build
build: bin/demo

PHONY: run
run: bin/demo
	clear
	@./result/bin/demo

PHONY: clean
clean:
	rm -rf result
	rm -rf bin/

PHONY: gcc
gcc: bin/demo
	gcc -o bin/demo src/main.c
