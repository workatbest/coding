# Given 2 binary strings return their sum
# a= "100" b= "11"

# Constraints 
# max length ?
# empty strings any one or both  return other string 
# null return null


def add_binary(a,b)
  return nil if( a.nil? && b.nil?)
  return a if( b.nil? || b.empty?)
  return b if( a.nil? || a.empty?)
  a_n = a.size
  b_n = b.size
  i = 0
  carry = 0
  result = ''
  while(i < a_n || i < b_n)
    if i >= a_n
      a_i = 0
      b_i = b[b_n - i -1].to_i
    elsif i >= b_n
      b_i = 0
      a_i = a[a_n - i - 1].to_i
    else
      b_i = b[b_n - i -1].to_i
      a_i = a[a_n - i - 1].to_i
    end
    add = a_i + b_i + carry
    result.prepend(add == 0 ? '0' : '1')
    carry = add < 2 ? 0 : 1
    i = i + 1
  end
  result.prepend('1') if carry == 1
  return result
end

puts add_binary("100", "111")
puts add_binary("100", "11")
