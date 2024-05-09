def debug(func):
  """
  Decorators allow modifying the behavior of functions or methods. 
  Here, debug is a decorator that prints the name of the called function.
  """
  def wrapper(*args, **kwargs):
      print(f"Calling function: {func.__name__}")
      return func(*args, **kwargs)
  return wrapper

@debug
def add(a, b):
    return a + b
# Example usage:
result = add(4, 5)
print("Result:", result)
