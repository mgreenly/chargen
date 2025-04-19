
bin/chargen: src/main.go
	mkdir -p bin
	go build -o bin/chargen src/main.go

run: bin/chargen
	@./bin/chargen

PHONY: clean
clean:
	rm -rf bin
