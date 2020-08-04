# count and say 
# Given a sequence you should be able to say the numbers 
# E.g. 11 -> 21
# 1211 -> 111221

Constraints:
# limit to the length sequence ?
# nulls 
# min max number we need to support ?

def count_and_say(sequence)
	return 0 if sequence == nil
	sequence = sequence.to_s
	n = sequence.to_s.size
    result = ''
	i = 1
	repeat = sequence[0]
	times = 1
	while (i<=n) do
		if sequence[i] == repeat
			times += 1
        else
        	result += times.to_s + repeat.to_s
        	times = 1
            repeat 	= sequence[i].to_i
        end
        i+=1
    end 
	return result 
end

puts count_and_say(1121)
