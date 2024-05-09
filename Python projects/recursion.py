def factorial(n):
    """This function calculates the factorial of a number using recursion."""
    if n == 0:
        return 1
    else:
        return n * factorial(n-1)

# Example usage:
print(factorial(4))
