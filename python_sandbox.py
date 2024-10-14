import sys

def gen(n):
    for i in range(n):
        yield i**2

# Creating a list (bas approach)
x = [i ** 2 for i in range(10000)]

# Using a generator
g = gen(10000)

print("Size in bytes: {size}".format(size=sys.getsizeof(x)))
print("Size in bytes: {size}".format(size=sys.getsizeof(g)))



