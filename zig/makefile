pwd = $(shell pwd)

PHONEY: build
build:
	zig build --prefix-exe-dir $(pwd)/bin --prefix-lib-dir $(pwd)/lib

run: build
	@clear
	@echo
	@./bin/chargen
	@echo

PHONY: clean
clean:
	rm -rf bin
	rm -rf lib
	rm -rf .zig-cache
	rm -rf zig-out
	rm -f *.a
	rm -f *.o
