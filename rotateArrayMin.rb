# Rotated Array 
# Suppose a sorted array A is rotated at some pivot unknown to you beforehand. (i.e., 0 1 2 4 5 6 7 might become 4 5 6 7 0 1 2).
# Find the minimum element.
# The array will not contain duplicates.

# For Example
# Input 1: A = 11
# Output 1: 3

# Input 2: A = 9
# Output 2: 3

def find_min(array)
    n = array.size
    high = n-1
    low = 0
    while true do
        mid =  (high + low)/2
        return array[high] if mid==high 
        return array[mid] if array[mid+1] > array[mid] && array[mid-1] > array[mid]
        # check if low is greater than high
        if array[low] > array[high] 
            # check mid is greater than high
            if array[mid] >= array[high]
                # low is in left side 
                low = mid + 1
            else
                high = mid - 1
            end
        else
            return array[low]
        end
    end 
end

#A = [4, 5, 6, 7, 1, 2]
#A = [0, 1, 2, 4, 5, 6, 7]
A = [2, 4, 5, 6, 7, 1]
puts find_min(A)
