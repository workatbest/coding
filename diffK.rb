
# Given an array a of sorted integers and another non negative int k find if there exists i and j such that  a[i] - a[j] = k and i!=j
# Input [1 2 3 5] k = y Output: 1

# Constraints 
# Max limit of an array
# null or empty or 0 
# duplicates 
 

def diff_k(a, k)
  return 0 if a.nil? || a.empty? 
  n = a.size 
  return 0 if k > a[n-1]
  for i in 0..n-1
    j = n - 1
    while (i < j)
      return 1 if a[j] - a[i] == k
      break if a[j] - a[i] < k
      j -= 1
    end
  end
  return 0
end

puts diff_k([1,3,5], 6)
