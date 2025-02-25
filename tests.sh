#!/bin/bash


run_test() {
    expected_output="$1"
    input="$2"
    description="$3"


    output=$(echo "$input" | ./fibonacci_cache)

    if [[ "$output" == *"$expected_output"* ]]; then
        echo "PASS: $description"
    else
        echo "FAIL: $description"
        echo "Expected: $expected_output"
        echo "Got: $output"
    fi
}

if [ -f fibonacci_cache ]; then
    rm fibonacci_cache
fi

gcc -o fibonacci_cache fibonacci_cache.c


run_test "Fib(0) = 0" "0" "Fibonacci of 0"

run_test "Fib(1) = 1" "1" "Fibonacci of 1"

run_test "Fib(5) = 5" "5" "Fibonacci of 5"

run_test "Fib(10) = 55" "10" "Fibonacci of 10"

