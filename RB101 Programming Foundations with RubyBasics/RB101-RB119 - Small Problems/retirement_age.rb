require 'Date' 

=begin 
Ask the user for his/her age
Ask for retirement age 
Get current year 
Calculate retirement year
Calculate how many years to retirement
Construct string to display
Display string
=end 

puts "How old are you?"
age = gets.chomp.to_i

puts "What age would you like to retire?"
retirement_age = gets.chomp.to_i 

current_year = Date.today.year.to_i

years_to_retirement = retirement_age - age 
retirement_year = current_year + years_to_retirement

retirement_info = "It's #{current_year}. You will retire in #{retirement_year}.\n You have only #{years_to_retirement} years to go!"
puts retirement_info 

