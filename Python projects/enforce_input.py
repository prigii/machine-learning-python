def add(x: int, y: int) -> int:
    """This function adds two integers."""
    if not isinstance(x, int) or not isinstance(y, int):
        raise TypeError("Both inputs must be integers.")
    return x + y

# Example usage:
print(add(4, 5))  # Output: 9
print(add(4.2, 5.7))  # This will raise a TypeError
