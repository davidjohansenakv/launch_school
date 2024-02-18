=begin
  Problem statement 
Create a method that takes a single positive integer and return a right triangle made out of '*' characters 
With the height of the triangle equal to the input integer
And the shape of the triangle such that the bottom of the triangle also contains a number of '*' characters equal to the argument 
And for each step up, the number of '*' characters decrease by 1 until the final '*' is reached. 
Considered another way, the triangle will contain n number of strings (where n is the input number)
Each of length n and with number of '*' equal to current step of the triangle or number of spaces equal to the length of the triangle - current step

  Examples
triangle(5)

    *
   **
  ***
 ****
*****


triangle(9)

        *
       **
      ***
     ****
    *****
   ******
  *******
 ********
********* 

Data structure  
We could use the Integer::Times method because Times gives us an incrementing index to work with when we pass a block to it. Since we don't care about zero indexes here, we can
add +1 to the index and that will give us the current 'step'. Then within the block we could create the string for the current step

Algorithm 
Initialize a string 
Iterate using times
  For each iteration create a piece of the triangle string, and add a newline character to the end and assign that to the string
    Each iteration will be a string with n - step number of ' ' character and n '*' characters appended to the string in that order 
  Puts the string 


=end 

def triangle(steps)
  triangle = ""
  steps.times { |step| triangle << ( ' ' * ( steps - (step + 1))   + '*' * (step + 1) + "\n" ) }
  puts triangle
end 

triangle(5)
# triangle(9)