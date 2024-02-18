=begin
Algoritm

Prompt the user for bill amount
Prompt the user for tip rate

Calculate the tip 
Calculate total amount 
Display tip and total amount on separate lines 

=end 

puts "What is the bill?"
bill = gets.chomp.to_f

puts "What is the tip percentage?"
percentage = gets.chomp.to_f

tip =  (bill * percentage / 100).round(1)
total = bill + tip 
puts "The tip is $#{tip}"
puts "The total is $#{total}"

