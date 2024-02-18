=begin

Write a program that solicits 6 numbers from the user, then prints a message that describe whether or not the 6th number could be found in the 
previous 5 numbers.

Example
==> Enter the 1st number:
25
==> Enter the 2nd number:
15
==> Enter the 3rd number:
20
==> Enter the 4th number:
17
==> Enter the 5th number:
23
==> Enter the last number:
17
The number 17 appears in [25, 15, 20, 17, 23].


==> Enter the 1st number:
25
==> Enter the 2nd number:
15
==> Enter the 3rd number:
20
==> Enter the 4th number:
17
==> Enter the 5th number:
23
==> Enter the last number:
18
The number 18 does not appear in [25, 15, 20, 17, 23].

Data structure
An array could be used to save the 5 numbers in 
A while loop could be used to prompt the user for numbers, so I don't have to write 6 puts statements. 

Algorithm
Initialize array
Start while loop
  Prompt user for a number
  Save number in array
  Exit while loop when i have 5 numbers 
prompt the user for the last number 
check if the number is present in the array
Puts a message dependent on previous expression 

=end 

def prompt(msg)
  puts("==> Enter the " + msg)
end 

five_numbers = []
prompt("1st number:")
five_numbers.append(gets.chomp.to_i) 

prompt("2nd number:")
five_numbers << gets.chomp.to_i 

prompt("3rd number:")
five_numbers << gets.chomp.to_i 

prompt("4th number:")
five_numbers.append(gets.chomp.to_i)

prompt("5th number.")
five_numbers.push(gets.chomp.to_i)

prompt("last number:")
last_num = gets.chomp.to_i 

first_bit_display = "The number #{last_num}"
last_bit_display = "in #{five_numbers}"

if five_numbers.include?(last_num) 
  puts(first_bit_display + " appears " + last_bit_display)
else 
  puts(first_bit_display + " does not appear " + last_bit_display)
end 