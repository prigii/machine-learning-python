def fibonacci(n):
    """This function generates Fibonacci sequence up to n."""
    a, b = 0, 1
    while a < n:
        yield a
        a, b = b, a + b

# Example usage:
fib_sequence = fibonacci(100)
print("Fibonacci sequence up to 10:")
for num in fib_sequence:
    print(num, end=" ")
