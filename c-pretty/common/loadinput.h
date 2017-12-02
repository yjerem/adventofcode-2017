#include <stdio.h>
#include <stdlib.h>

#define LOADINPUT_CHUNK_SIZE 4096

char *loadinput(int day, size_t *len) {
  FILE *fp;
  char filename[32];
  char *buffer;
  size_t nread, i;

  snprintf(filename, sizeof(filename), "input/input%02d", day);

  fp = fopen(filename, "r");
  buffer = NULL;
  *len = 0;
  while (!feof(fp)) {
    buffer = realloc(buffer, *len + LOADINPUT_CHUNK_SIZE);
    *len += fread(&buffer[*len], 1, LOADINPUT_CHUNK_SIZE, fp);
  }
  fclose(fp);

  if (*len % LOADINPUT_CHUNK_SIZE == 0) {
    buffer = realloc(buffer, *len + 1);
  }
  buffer[*len] = '\0';

  return buffer;
}

