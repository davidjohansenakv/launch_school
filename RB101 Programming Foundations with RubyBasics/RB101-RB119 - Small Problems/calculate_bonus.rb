=begin
  Problem Statement 
Create a method that takes two arguments. The first one will be a POSITIVE integer. The second one will be a boolean.
Then, calculate the bonus for a given salary.
If the boolean is false, the bonus is 0.
If the boolean is true, the salary is half the positive integer. 

Data structure
A simple ternary using the boolean as condition and the returns either zero or the first input argument divided by two
 

  Examples


  Data Structure


  Algorithm 
  Ternary condition, one liner 


=end 

def calculate_bonus(number, boolean)
  boolean ? number / 2 : 0
end 

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000
