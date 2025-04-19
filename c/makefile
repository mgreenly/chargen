
bin/chargen: src/main.c
	mkdir -p bin
	$(CC) $(CFLAGS) -o $@ $<

run: bin/chargen
	@./bin/chargen

PHONY: clean
clean:
	rm -rf bin
