=begin

Given two arays of numbers return an array that is the result of mergin the two arrays
The first array should be the even indexes of the merged array 
If one array is longer than the other, just append each element of that array to the new array until you no longer can 

Data_Structure
We want to initialize a new merged array 
Set one counter  
Get the array lengths and set to variables 
We want to iterate over the arrays 
  In each iteration 
    Check if counter is equal to length - 1  for first array 
      Append  counter indexed element from first array to merged array
increase counter by one   
    The same for second array 
return merged array 

=end 

first_array = [1, 2]
second_array = [4, 5, 6]
expected_result = [1, 4, 2, 5, 3, 6]

def merge(arr1, arr2)
  merged = []
  counter = 0 
  arr1_length = arr1.length 
  arr2_length = arr2.length 
  max_length = arr1_length > arr2_length ? arr1_length : arr2_length 
  while counter < max_length 
    unless counter >= arr1_length
      merged.append(arr1[counter])
    end 
    unless counter >= arr2_length
      merged.append(arr2[counter])
    end 
    counter += 1 
  end
  merged  
end

p merge(first_array, second_array)