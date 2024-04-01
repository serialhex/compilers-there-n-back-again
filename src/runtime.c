#include <stdio.h>

/* define all scheme constants */
#define fx_shift    2
#define fx_tag   0x00
#define fx_mask  0x03
#define bool_f   0x2F
#define bool_t   0x6F
#define nil_val  0x3f
#define char_tag 0x0f

/* all scheme values are of type ptr */
typedef unsigned int ptr;

int scheme_entry();

static void print_ptr(ptr x) {
  if ((x & fx_mask) == fx_tag) {
    printf("%d", ((int)x) >> fx_shift);
  } else if (x == bool_f) {
    printf("#f");
  } else if (x == bool_t) {
    printf("#t");
  } else if (x == nil_val) {
    printf("()");
  } else if ((x & 0xff) == char_tag) {
    char c = (x >> 8);
    switch (c) {
      case '\t': {
        printf("#\\tab");
      } break;
      case '\n': {
        printf("#\\newline");
      } break;
      case '\r': {
        printf("#\\return");
      } break;
      case ' ': {
        printf("#\\space");
      } break;
      default: {
        printf("#\\%c", c);
      }
    }
  } else {
    printf("#<unknown 0x%80x>", x);
  }
  printf("\n");
}

int main(int argc, char** argv) {
  print_ptr(scheme_entry());
  return 0;
}

