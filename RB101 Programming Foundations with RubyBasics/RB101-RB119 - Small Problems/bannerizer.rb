# Bannerizer takes a string and returns outputs the string within a "box" - a shape made of characters 
# The banner will look like the following 

# So there will be 5 lines output to the console. We can put it all within one string and separate it with newlines 
# Datastructure - a single string
# Datastructure - the basic structure of the string 

# Algorithm
# Get the length of the string + 2 
# Build basic string structure 
  # Add extra characters to string dependent on line (either '-' or a space ' ')
  # The first line will have + + at each end ie [-1] and [0] index of a given string representing a line 
  # The last line is the same
  # The three lines in the middle will have '|'

def print_in_box(string)
  end_string = "+#{'-' * (string.length + 2)}+"
  empty_space = "|#{' ' * (string.length + 2)}|"

  puts end_string
  puts empty_space
  puts "| #{string} |"
  puts empty_space
  puts end_string
end 

# Examples 
print_in_box('')
=begin 
+--+
|  |
|  |
|  |
+--+
=end 

print_in_box('To boldly go where no one has gone before.')
=begin 
+--------------------------------------------+
|                                            |
| To boldly go where no one has gone before. |
|                                            |
+--------------------------------------------+
=end 