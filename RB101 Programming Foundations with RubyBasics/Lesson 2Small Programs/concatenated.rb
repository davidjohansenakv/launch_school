=begin
Given an array of character
initialize a variable to hold a string
iterate over the array
- add the current character to the string
return string 
=end 

def concatenate(str_arr)
  concatenated = String.new 
  str_arr.each do |char| 
    concatenated += char 
  end
  concatenated 
end 

test_array = ['a', 'b', 'c' ]
expected_result = 'abc'

puts concatenate(test_array) == expected_result
