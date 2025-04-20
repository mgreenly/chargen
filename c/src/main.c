#include <stdio.h>
#include <stdlib.h>
#include <string.h>

size_t ask(char *prompt, char **buffer_ptr, size_t *buffer_size, FILE *stream){
  char *buffer = *buffer_ptr;
  size_t chars_read = 0;

  printf(prompt);
  chars_read = getline(buffer_ptr, buffer_size, stream) - 1;
  buffer[chars_read] = '\0';
  return(chars_read);
}

int main() {
    char *buffer;
    size_t buffer_size = 256;
    size_t chars_read;

    buffer = (char *)malloc(buffer_size * sizeof(char));
    if (buffer == NULL) {
        fprintf(stderr, "Memory allocation failed\n");
        return 1;
    }

    chars_read = ask("What's your name: ", &buffer, &buffer_size, stdin);

    puts("----------------");
    printf("%s", buffer);
    puts("===");
    puts("----------------");

    return 0;
}

