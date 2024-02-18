=begin
Prompt user for noun, verb, adverb and adjective in that order 
Create a fun string using those and return it to the user 
=end 

puts("Enter a noun:")
noun = gets().chomp()

puts("Enter a verb:")
verb = gets().chomp()

puts("Enter an adverb:")
adverb = gets().chomp() 

puts("Enter and adjective:")
adjective = gets.chomp 

fun_string = "Do you #{verb} your #{noun} #{adverb}? That's #{adjective}"
puts fun_string 


