# Find the contiguous subarray within an array, A of length N which has the largest sum.
# Input Format: The first and the only argument contains an integer array, A.
# Output Format: Return an integer representing the maximum possible sum of the contiguous subarray.
# Constraints:

# 1 <= N <= 1e6
# -1000 <= A[i] <= 1000
# For example:
# Input 1: A = [1, 2, 3, 4, -10]
# Output 1: 10
# Explanation 1: The subarray [1, 2, 3, 4] has the maximum possible sum 
# Input 2: A = [-2, 1, -3, 4, -1, 2, 1, -5, 4]
# Output 2: 6
# Explanation 2: The subarray [4,-1,2,1] has the maximum possible sum of 6.

def max_sum_contiguous(a)
    # size of an array
    n = a.size
    sum_so_far = sum_end = 0
    (0..n-1).each do |i|
        sum_end += a[i]
        sum_so_far = sum_end if sum_so_far < sum_end 
        sum_end = 0 if sum_end < 0 
    end
    sum_so_far
end


A = [1, 2, 3, 4, -10] 
puts max_sum_contiguous(A)
B = [-2, 1, -3, 4, -1, 2, 1, -5, 4]
puts max_sum_contiguous(B)
