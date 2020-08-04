# Given an array of integers with n objects sort  in order of red white and blue 
# Input [0 1 2 0 1 2] Output [0 0 1 1 2 2]

# Constraints 
# Max limit of an array
# null objects or not 0/1/2 
 

def sort_array(a)
  return a if a.nil? || a.empty?
  n = a.size - 1 
  i = 0 
  fwd = 1
  while (fwd <= n) do
    if(a[fwd] == 0) 
      a[fwd] = a[i]
      a[i] = 0
      i += 1 
      fwd += 1
    elsif (a[fwd] == 1)
      fwd += 1
    else
      a[fwd] = a[n]
      a[n] = 2
      n -= 1 
    end  
  end
  return a
end

puts sort_array([1,2,2,0,1])
