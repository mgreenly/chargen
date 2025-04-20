
bin/chargen: src/main.c
	nix-build default.nix

run: bin/chargen
	clear
	@./result/bin/chargen

PHONY: clean
clean:
	rm -rf result
