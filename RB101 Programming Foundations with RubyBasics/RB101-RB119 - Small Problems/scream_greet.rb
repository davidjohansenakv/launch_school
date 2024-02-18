# If the user has an exclamation point in their name, remove that and greeting them in all caps with a special message

puts "What is your name?"
name = gets.chomp 

greeting = nil
if name[-1] == '!'
  greeting = "HELLO #{name[0, name.length - 1].upcase}. WHY ARE WE SCREAMING?"
else 
  greeting = "Hello #{name}."
end 

puts greeting 
