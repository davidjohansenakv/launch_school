def palindrome?(string)
  string == string.reverse
end 

def palindromic_number?(int)
  palindrome?(int.to_s)
end 
