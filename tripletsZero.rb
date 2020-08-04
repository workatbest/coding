# Given an array of integers find all unique triplets in the array which gives sum 0

# Constraints 
# order matters ?
# output should be list of arrays ?
# what if we do not find any , null or empty 
 

def triplets_zeno(a)
  return a if a.nil? || a.empty?
  n = a.size  
  a= a.sort
  results = []
  a.each do |i|
    l = i + 1
    r = n - 1
    while (l < r) do
        total = i+a[l]+a[r]
        if total == 0
            results << [i, a[l], a[r]] 
        end
        if total <= 0 
            l += 1
        else
            r -= 1
        end
    end
  end
  return results.uniq
end

puts triplets_zeno([-1, 0, 1, 2, -1, -4]).to_s
