# Rearrange a given array so that Arr[i] becomes Arr[Arr[i]] with O(1) extra space.

# Input : [1, 0]
# Return : [0, 1]
# Lets say N = size of the array. Then, following holds true :
# All elements in the array are in the range [0, N-1]
# N * N does not overflow for a signed integer

# A = [3,0,2,1] => n=4 A[0] += (A[A[0]]%4)*4 => A[0] = 3+4 = 7 
# new A = [7,12,10,1] final A = [1,3,2,0]

def rearrange_array(array)
    # size of an array
    n = array.size
    # iterate 
    (0...n).each do |iter|
        array[iter] = array[iter]+(array[array[iter]]%n)*n
    end
    p array, n
    (0...n).each do |iter|
        p array[iter]
        array[iter] = (array[iter]/n)
    end
    array
end

p rearrange_array([3,0,2,1])
