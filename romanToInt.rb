# Roman to Int 
# Given a string A representing a roman numeral.
# Convert A into integer.
# A is guaranteed to be within the range from 1 to 3999.
# NOTE: Read more details about roman numerals at Roman Numeric System : https://en.wikipedia.org/wiki/Roman_numerals#Roman_numeric_system 
# Input Format : The only argument given is string A.
# Output Format: Return an integer which is the integer verison of roman numeral string.
# For Example Input 1: A = "XIV"
# Output 1: 14
# Input 2: A = "XX"
# Output 2: 20

def init()
  h = Hash.new
  h['I'] = 1
  h['V'] = 5
  h['X'] = 10
  h['L'] = 50
  h['C'] = 100
  h['D'] = 500
  h['M'] = 1000
  h
end

def roman_to_int(a)
    i = 0
    n = a.size
    h = init()
    result = 0
    while(i < n)
        s0 = h[a[i]]
        if(i+1 < n)
            s1 = h[a[i+1]]
            if s0 >= s1 
                result = result + s0 
                i = i+1
            else
                result = result + s1 - s0
                i = i + 2
            end
        else
            result = result + s0
            i = i + 1
        end
        puts result, i
    end
    result
end

puts roman_to_int('MDCCCIV')
