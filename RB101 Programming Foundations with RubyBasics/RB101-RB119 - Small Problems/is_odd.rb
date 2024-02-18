# Write a method that takes one integer argument, which may be positive, negative, or zero. 
# This method returns true if the number's absolute value is odd. You may assume that the argument is a valid integer value.
# May not use instance methods #Odd? and #Even? for this problem 

# Examples

# Will modulos have a problem with division with zero? Can I have 0 as a denominator? I suppose I can
# As modulos returns the remainer of a division, if I divide by 2, if I have a remainder, the number must be odd
# So I can have the input argument number as the left-hand side argument to the modulus operator % and 2 as the right hand side operator and check 
# the result 

# algoritm
# Get Integer to check
# Use modulus by 2 and see if the result is unequal to zero

def is_odd?(num)
  num % 2 != 0
end 

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true