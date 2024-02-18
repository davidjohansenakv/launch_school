=begin
Define a method that will take a non-empty string argument 
if the length of the string is odd, return a single char
If the length is even, return two chars 

example
center_of('man') == 'a'
center_of_(ball) == 'al' 

What happens when we have an even number? Let's say the length of the string is four as in the example
Four divided by two (half the length) is equal to 2. That is the index of the final character we want
# the second character we want must then be half the length / 2 - 1 

# if we have an odd number, how do we then fine the middle of the string? If the length is 3, and we that by two, we get 1
# If we the length is 5, and we divide that by 2 (assuming we are working with integers), we get 2. Which is the index of the middle of the string. So easy

Data structure
  We can use simple variables to hold length 
  We can use ruby methods to find out if the length is odd 
  We can use the [] operator to index into a string to get a char

Algorithm
Get the length of the string
Find ouf if the string is odd
If odd, index is length of string / 2 
If even, indexes are length of string / 2 and length of string / 2 - 1

=end 

def center_of(string)
  length = string.length()
  if length.odd?
    string[length / 2]
  else 
    string[length / 2 - 1, 2]
  end
end 

puts center_of('human')
puts center_of('ball')