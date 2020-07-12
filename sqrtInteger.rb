# Square Root of Integer
# Given an integar A.
# Compute and return the square root of A.
# If A is not a perfect square, return floor(sqrt(A)).
# Input Format : The first and only argument given is the integer A.
# Output Format : Return floor(sqrt(A))
# Constraints : 1 <= A <= 10^9

# For Example
# Input 1: A = 11
# Output 1: 3

# Input 2: A = 9
# Output 2: 3

def floor_sqrt(n)
    return 0 if n <= 1 
    i = 1 
    result = 1
    while (n >= i*i) do
        i += 1
    end 
    return i - 1
end

puts floor_sqrt(11)
puts floor_sqrt(9)
puts floor_sqrt(8)
puts floor_sqrt(4)
puts floor_sqrt(5)
