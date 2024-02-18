=begin
# Define a method that takes one input argument, which will be a POSITIVE integer.
# The string will always start with 1
# Return a string of length equal to the input 
# The string will contain alternating 1's and 0's 
=end 

# Examples: 


def stringy(num)
  stringified = ""
  num.times do |index| 
    stringified += index.even? ? '1' : '0' 
  end 
  stringified
end 

puts stringy(6) == '101010'
puts stringy(1) == '1'
puts stringy(3) == '101'

=begin 
Data structure 
We can consider the input integer to define a length of a string, which means that there will be a character for 
each position in the string. and that character will have an index in the string
If we then consider the number to be a range that we must iterate over, the range being the index of the string from 0 to n-1 where n is the input number
Then we can see, that for every even number in the index range, we will put a '1' character
And for every odd number, we will put a '0' character.
We can use this information and mutate a string in a block that we pass to the Integer.#times method 

Algorithm
Initialize return string 
Iterate n times
For each iteration, add a character to return string
  The character to return is dependent on the current iteration. For even index iterations, it is '1' otherwise '0'
return string 

=end 

