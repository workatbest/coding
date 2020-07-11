# A message containing letters from A-Z is being encoded to numbers using the following mapping: A=1 ... Z=26
# Given an encoded message A containing digits, determine the total number of ways to decode
def decode(message)
    #return if empty
    # Convert number to string 
    array=message.to_s
    # get size of string
    n = array.size
    # Edge consitions 
    array
    # array to hold the count of possible decoding 
    count=[]
    # set first count as 1 
    count[0] = count[1] = 1
    (2..n+1).each do |i|
        count[i] = 0
        # if previous char is > 0
        count[i] = count[i-1] if array[i-1].to_i > 0
        # if number is <= 26
        count[i] = count[i] + count[i-2] if (array[i-2] == '1' or array[i-2] == '2' && array[i-1].to_i < 7)
    end
    count[n]
end
    
puts decode(1234613)
puts decode(12)
puts decode(8)
