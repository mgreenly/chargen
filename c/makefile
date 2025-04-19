
bin/chargen: src/main.c
	mkdir -p bin
	$(CC) $(CFLAGS) -o $@ $<
	@echo "========================================================================="

run: bin/chargen
	clear
	@./bin/chargen

PHONY: clean
clean:
	rm -rf bin
