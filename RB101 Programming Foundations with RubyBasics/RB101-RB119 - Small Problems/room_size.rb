
# Ask the user for the length of the room in meters

# Ask the user for the width of the room in meters

# Calculate room area in m
# Calculate the area in feet 

# Display the area of the room for both units 

puts("Enter the length of the room in meters:")
len = gets.chomp.to_f

puts("Enter the width of the room in meters:")
width = gets.chomp.to_f 

area_meters =  len * width 
area_feet = area_meters * 10.7639 

puts("The area of the room is #{area_meters} square meters (#{area_feet.round(2)} square feel).")