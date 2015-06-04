#include <stdio.h>

int call_lib(int);

int main() {
  printf("retval=%d", call_lib(7));
  return 0;
}
