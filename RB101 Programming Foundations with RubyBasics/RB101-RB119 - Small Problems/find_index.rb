def find_index(arr, element)
index = 0
loop do 
  break if arr[index] == element 
  break if (index + 1) >= arr.length 
index +=1 
end 
index  
end 

puts find_index(%w(a b c d), 'a')

