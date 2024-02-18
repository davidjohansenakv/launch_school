=begin
Ask for two positive integers
Do calculations
Display calculations 
=end 

def prompt(msg)
  puts("==> #{msg}")
end 

prompt("Enter the first number:")
first_num = gets.chomp.to_i

prompt("Enter the second number:")
second_num = gets().chomp().to_i 

addition_sum = first_num + second_num 
prompt("#{first_num} + #{second_num} = #{addition_sum}")

subtraction_sum = first_num - second_num 
prompt("#{first_num} - #{second_num} = #{subtraction_sum}")

multiplication_sum = first_num * second_num 
prompt("#{first_num} * #{second_num} = #{multiplication_sum}")

quotient = first_num / second_num 
prompt("#{first_num} / #{second_num} = #{quotient}")

remainder = first_num % second_num 
prompt("#{first_num} % #{second_num} = #{remainder}")

power = first_num ** second_num 
prompt("#{first_num} ** #{second_num} = #{power}")