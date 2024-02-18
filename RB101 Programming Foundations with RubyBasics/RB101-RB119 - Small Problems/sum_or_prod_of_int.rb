=begin
Prompt the user for an integer greater than 0 
Ask if the user wants the sum or product of all numbers between 1 and the integer
Calculate based on the answer
  get range of numbers 
  make them and array
  sum or multiply them 
    multiply ? 
    sum = 1 
    sum *= each element  
Display sum to user 

=end 

puts "Hey, could you lend me an integer that's greater than 0?"
to_play_with = gets.chomp.to_i
sum_prod_arr = (1..to_play_with).to_a

puts "Allright. D'ya want me to sum (s) or get the product (p) of all numbers between 1 and #{to_play_with}"
prod_or_sum = gets.chomp 


if prod_or_sum == 's'
  sum = sum_prod_arr.sum 
  puts "The sum of the integers between 1 and #{to_play_with} is #{sum}"
elsif prod_or_sum == 'p'
  sum = 1 
  sum_prod_arr.each { |num| sum *= num }
  puts "The product of the integers between 1 and #{to_play_with} is #{sum}"
end 