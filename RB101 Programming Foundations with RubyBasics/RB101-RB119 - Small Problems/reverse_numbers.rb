=begin 
  Problem Statement 

Take a positive integer as an argument 
Return the number but all the digits reversed 

# fastest way is to turn it into a string then reverse the string then back into a digit

=end 

def reversed_number(num_to_reverse)
  num_to_reverse.to_s.reverse.to_i
end 

puts reversed_number(2000)
reversed_number(12345) == 54321
reversed_number(12213) == 31221
reversed_number(456) == 654
reversed_number(12000) == 21 # No leading zeros in return value!
reversed_number(12003) == 30021
reversed_number(1) == 1