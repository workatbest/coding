# Find Nth Fibonacci
# Problem Description
# Given an integer A you need to find the Ath fibonacci number modulo 109 + 7.
# The first fibonacci number F1 = 1
# The first fibonacci number F2 = 1
# The nth fibonacci number Fn = Fn-1 + Fn-2 (n > 2)

# Problem Constraints 1 <= A <= 109.

# Input Format : First argument is an integer A.

# Output Format: Return a single integer denoting Ath fibonacci number modulo 109 + 7.

# Example Input 
# Input 1: A = 4
# Input 2: A = 3
# Example Output
# Output 1: 3
# Output 2: 2

# Example Explanation
# Explanation 1:
# F3 = F2 + F1 = 1 + 1 = 2
# F4 = F3 + F2 = 2 + 1 = 3
# Explanation 2:
# F3 = F2 + F1 = 1 + 1 = 2


def n_fibonacci(n)
    return n if n < 2
    return n_fibonacci(n-1) + n_fibonacci(n-2)
end

puts n_fibonacci(3)
puts n_fibonacci(4)
puts n_fibonacci(7)
puts n_fibonacci(8)
puts n_fibonacci(9)
