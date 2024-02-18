=begin 
Method that takes a number as an argument. If the argument is positive, return the negative of that number
If the number is 0 or negative, return the original number 

This can be done simply with a ternary operator checking if the number is bigger than 0 
=end 

def negative(number)
  number > 0 ? number * -1 : number 
end 

# All test cases should return true
puts negative(5) == -5
puts negative(-3) == -3
puts negative(0) == 0      # There's no such thing as -0 in ruby
