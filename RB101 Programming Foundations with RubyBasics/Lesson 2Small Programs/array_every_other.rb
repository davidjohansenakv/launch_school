=begin
Given an array, return every other element in a new array
  Iterate over every element using select
    check if the element index is even
  Select returns a new array, so we can just use that return as the last line in the method 

Data Struct
Can we use map for this? Map returns a new array, but it does use every element of the original array
We don't want map. We want a subset of the original array, so it's easier to use select. 
So we select those elements, where the block returns true
how do we make sure only every other element returns true? 
  We can get the element index. If the element index is even, then it is every other element. The first element has index 0 for example
  # Can I use % on a 0 index? should be okay as long as its not the denominator. 


START
# Given an array 
array.SELECT |el|
  IF element index is even return true 
END 

# I can probably index into the array

=end

def every_other(arr)
  arr[(0..).step(2)]
end 

test_array = [1, 4, 7, 2, 5]
expected_result = [1, 7 , 5]

puts (every_other(test_array) == expected_result)