=begin

Write a method that takes two arguments and returns true if exactly one of its arguments are truthy, false otherwise 
|| Returns true if either of two arguments are true
&& returns true if both arguments are true 

and xor returns true if only one of the two arguments are true ¨
I can simply use && to check -> if the && returns true, we instead return false (because they can't both be true)
After the && check i use and OR check. If that returns true, we have a xor condition
As && and || returns truthy /falsey values, i can't rely solely on their returns. I have to transform it somehow.
# for the && i can use the ! operator in an if condition? or I can simply check and assign our return boolean to false 

If A and B are true we return false (so use &&)
IF this condition is passed, and returns false, we know that both arguments can't be true. Which leaves the option that either one of them are
true, or none of them. So if we then use the OR operator and get a truthy value, we know that one of the arguments are true
otherwise, it is false 

Algorithm
Check if both are true
  if yes, return false 
Check if either is true
    return true if yes 
  else return false 

=end 

def xor?(bool1, bool2)
  truthiness = nil 
  if bool1 && bool2 
    truthiness = false 
  elsif bool1 || bool2
    truthiness = true 
  else 
    truthiness = false 
  end 
  truthiness
end 

puts xor?(5.even?, 4.even?) == true
puts xor?(5.odd?, 4.odd?) == true
puts xor?(5.odd?, 4.even?) == false
puts xor?(5.even?, 4.odd?) == false