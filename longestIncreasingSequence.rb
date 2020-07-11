# Output Format:
# Return an integer representing the length of the longest increasing subsequence.
# Constraints:
# 1 <= length(A) <= 2500
# 1 <= A[i] <= 2000

# Input 1: A = [1, 2, 1, 5]
# Output 1: 3
    # Explanation 1: The sequence : [1, 2, 5]

# Input 2: A = [0, 8, 4, 12, 2, 10, 6, 14, 1, 9, 5, 13, 3, 11, 7, 15]
# Output 2: 6
# Explanation 2: The sequence : [0, 2, 6, 9, 13, 15] or [0, 4, 6, 9, 11, 15] or [0, 4, 6, 9, 13, 15]

def longest_increasing_sequence(array, iter, n, prev)
    # exit condition
    return 0 if iter==n
    # exclude next seq 
    excl = longest_increasing_sequence(array, iter+1, n, prev)
    # include seq
    incl = 0
    # seq is increasing 
    if array[iter] > prev 
        incl = 1 + longest_increasing_sequence(array, iter+1, n , array[iter]) 
    end
    return [excl,incl].max
end

puts longest_increasing_sequence([1, 2, 1, 5], 0, 4, -1)
A = [0, 8, 4, 12, 2, 10, 6, 14, 1, 9, 5, 13, 3, 11, 7, 15]
puts longest_increasing_sequence(A, 0, A.size, -1)
