#include <stdio.h>

long long fibnum_cache[92];

void init_cache() {
    fibnum_cache[0] = 0;
    fibnum_cache[1] = 1;
    for (int i = 2; i < 92; i++)
        fibnum_cache[i] = -1;
}

long long fibonacci(int n) {

    if (fibnum_cache[n] != -1)
        return fibnum_cache[n];

    fibnum_cache[n] = fibonacci(n - 1) + fibonacci(n - 2);
    return fibnum_cache[n];
}

void run_tests() {
    int n;

    printf("Enter a number to calculate the Fibonacci value (0 to 91): ");
    scanf("%d", &n);

    if (n < 0 || n > 91)
        printf("Invalid input! Please enter a number between 0 and 91.\n");

    init_cache();

    printf("Fib(%d) = %lld\n", n, fibonacci(n));
}

int main() {
    run_tests();
    return 0;
}
