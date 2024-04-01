#include <stdio.h>

/* define all scheme constants */
#define bool_f  0x2F
#define bool_t  0x6F
#define fx_mask 0x03
#define fx_tag  0x00
#define fx_shift   2

/* all scheme values are of type ptr */
typedef unsigned int ptr;

int scheme_entry();

int main(int argc, char** argv) {
  printf("%d\n", scheme_entry());
  return 0;
}

