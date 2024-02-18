=begin
Given a string and a character, determine the index of the third occurence of the character
If the given character does not occur at least 3 times, return nil

So the method takes two argument. The first one is a string.
The second one is a character. 

return index of third occurrence if character occurs at least 3 times in string
otherwise return nil  

sample_string = 'xxisjhx'
character = 'x'
=> 6 

sample_string = 'xxisjh'
character = 'x'
=> nil 

sample_string = 'xxijxkmkx'
character = 'x' 
=> 4 

Data_structures 
  array_of_indexes 
  count of length < 3 then return nil 
  otherwise array_of_index[2] 

Pseudo-code 
  array_of_indexes = empty array 
  iterate over string
    if the iteration character matches the input character 
      get the index of the current character
      append that to my array_of indexes
  if the length of the array >= 3 
    return the 2 index of the array 

=end

def third(string, character)
  array_of_indexes = []
    string.split('').each_with_index do |string_char, index|
      if string_char == character
        array_of_indexes << index 
      end 
    end 
  return array_of_indexes[2] if array_of_indexes.length >= 3 
  nil 
end 

test_string = 'axbxcdxex'
test_char = 'x'
expected_result = 6

puts third(test_string, test_char) == expected_result

test_string = 'axbc'
test_char = 'x'
expected_result = nil


puts third(test_string, test_char) == expected_result

