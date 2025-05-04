bin/demo: src/main.c
	mkdir -p bin/
	gcc -o bin/demo ./src/main.c -lyaml

PHONY: build
build: bin/demo

PHONY: run
run: bin/demo
	@clear
	@./bin/demo

PHONY: clean
clean:
	rm -rf result
	rm -rf bin/
