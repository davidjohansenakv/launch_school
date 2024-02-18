=begin 
Write a program that prompts the user for a word or multiple words
Calculate how many characters are in the words
Note - Spaces don't count as characters
Display a message to the user containing the result of the calculation
=end 

puts("Please write a word or multiple words")
words = gets().chomp() 
words_length = words.gsub(' ', '').length 
puts("There are #{words_length} characters in: '#{words}'")

