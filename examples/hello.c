int putchar(int c);
void print_str(const char* p);
int puts(const char* p);

int main() {
    puts("hello Rill world!");
    return 0;
}

void print_str(const char* p) {
  for (; *p; p++)
    putchar(*p);
}

int puts(const char* p) {
    print_str(p);
    putchar('\n');
}