#include <stdio.h>
#include <stdlib.h>
#include <string.h>

size_t ask(char *prompt, char **buffer, size_t *buffer_size, FILE *stream){
  size_t chars_read = 0;

  printf(prompt);

  chars_read = getline(buffer, buffer_size, stream) - 1;
  ((char *)(*buffer))[chars_read] = '\0';
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
