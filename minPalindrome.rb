# Minimum chars to insert at end to make string palindrome 
# Input: "abede" Output 2
def min_palindrome(a)
  return 0 if a.nil? || a.empty?
  n = a.size - 1 
  flag = 0
  count = 0
  i = 0 
  while(i <= n)
    if (a[i] == a[n])
      i += 1
      n -= 1
      flag += 1 
    else
      count += 1 + flag
      n = a.size - 1 if flag > 0
      i += 1
      flag = 0 
    end
  end
  return count
end

puts min_palindrome("")
puts min_palindrome("abede")
