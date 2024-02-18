require 'json'

def get_messages(message_file)
  f = File.new(message_file, 'r+')
  f.read();
end 

def prompt(message)
  Kernel.puts("=> #{message}")
end

def number?(num)
  number_regex = /^(\d*(\.\d+)?)$/

  num.match?(number_regex)
end

def valid_operator?(operator)
  %w(1 2 3 4).include?(operator)
end

def operation_to_message(op)
  operation = case op
  when '1'
    'Adding'
  when '2'
    'Subtracting'
  when '3'
    'Multiplying'
  when '4'
    'Dividing'
  end

  return operation 
end

message_string = get_messages('calculator_messages.txt')
MESSAGES = JSON.parse(message_string)

prompt(MESSAGES["welcome"])
prompt(MESSAGES["name"])

name = ''
loop do
  name = Kernel.gets().chomp()

  if name.empty?()
    prompt("Make sure to use a valid name")
  else
    break
  end
end

prompt("Hi #{name}")
loop do
  number1 = nil
  loop do
    prompt("What's the first number?")
    number1 = Kernel.gets().chomp()

    if number?(number1)
      break
    else
      prompt(MESSAGES["invalid_number"])
    end
  end

  number2 = nil
  loop do
    prompt("What's the second number?")
    number2 = Kernel.gets().chomp()

    if number?(number2)
      break
    else
      prompt(MESSAGES["invalid_number"])
    end
  end
  number1 = number1.to_f()
  number2 = number2.to_f()

  operator = nil
  loop do
    prompt(MESSAGES["operation"])
    operator = Kernel.gets().chomp()

    if valid_operator?(operator)
      break
    else
      prompt("Hmm ... that doens't look like a valid operator")
    end
  end

  prompt("#{operation_to_message(operator)} the two numbers...")

  Kernel.sleep(1)

  result = case operator
           when '1'
             number1 + number2
           when '2'
            number1 - number2
           when '3'
             number1 * number2
           when '4'
             number1 / number2
           end

  prompt("The result is #{result}")

  prompt("Do you want to perform another calculation? (Y to calculate again)")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("Thank you for using calculator. Goodbye!")
