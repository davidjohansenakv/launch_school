def is_an_ip_number?(str)
  (0..255).to_a.map { |num| num.to_s }.include?(str)
end 

def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  return false unless dot_separated_words.length == 4 

  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    return false unless is_an_ip_number?(word)
  end
  
  true 
end

puts dot_separated_ip_address?("1.1.1.1.1")
puts dot_separated_ip_address?("1.1.1.1")
puts dot_separated_ip_address?("1.1.1")

