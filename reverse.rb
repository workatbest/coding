# Reverse Words string 
# given sentence reverse words and return the string 
# Input “Hello World” Output “World Hello”

# Constraints 
# Max limit
# null and empty
# space in nstart and/or end 
# multiple spaces 

def reverse(sentence)
  return sentence if sentence.nil? || sentence.empty?
  sent_array = sentence.split 
  n = sent_array.size - 1
  i = 0
  while (i < n) do
    temp = sent_array[i]
    sent_array[i] = sent_array[n]
    sent_array[n] = temp
    i += 1 
    n -= 1
  end
  return sent_array.join(' ')
end

puts reverse("Hello World")
puts reverse(" Hello World ")
puts reverse("  ")
