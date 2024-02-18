=begin 
return true if a string passed into method is a palindrome
punctuation, case and space matters

just reverse the string and check it against itself

=end 

def palindrome?(string)
  string == string.reverse 
end 

puts palindrome?('madam') == true
puts palindrome?('Madam') == false          # (case matters)
puts palindrome?("madam i'm adam") == false # (all characters matter)
puts palindrome?('356653') == true

def real_palindrome?(string)
  # make everything lowercase
  # if no non-alpha-numerics - can just call previous method, call that last
  downcased = string.downcase 
  # remove non-alpha numerics.
  # Could use a regex? 
  # Or could simply remove all characters that are in a string. Gsub? But gsub looks for a specific string. Would have to call gsub a thousand times
  # what about having an array that holds all valid characters? Maybe I could use range for this. One for numbers one for characters and just have them in the same array
  valid_chars = ('a'..'z').to_a
  valid_chars << (0..9).to_a 
  valid_string = "" 
  downcased.each_char { |char| valid_string << char if valid_chars.include?(char) }
  palindrome?(valid_string)
end 

puts real_palindrome?('madam') == true
puts real_palindrome?('Madam') == true           # (case does not matter)
puts real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
puts real_palindrome?('356653') == true
puts real_palindrome?('356a653') == true
puts (real_palindrome?('123ab321') == false) 
