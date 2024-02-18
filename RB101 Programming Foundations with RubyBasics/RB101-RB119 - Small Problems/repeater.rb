 # Requirements 
 # Write a method that takes two arguments, a string and a positive integer, and prints the string as many times as the integer indicates.

 # def method with two parameters, param_string and n_times 
 # puts param_string n_times

 def repeat(string, n)
  n.times { |_| puts string }
 end 

 repeat('Hello', 3)