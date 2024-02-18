require 'yaml'

messages_string = File.new('mortage_messages.yml').read()
MESSAGES = YAML.load(messages_string)

def prompt(message)
  puts("=> #{message}")
end

def number?(num)
  num.match?(/^(\d*(\.\d+)?)$/)
end

def integer?(num)
  num.match(/^\d+$/)
end

prompt(MESSAGES["welcome"])

loop do
  loan_amount = nil
  loop do
    prompt(MESSAGES["loan_prompt"])
    loan_amount = gets().chomp()
    break if number?(loan_amount)
    prompt(MESSAGES["invalid_number"])
  end

  annual_rate = nil
  loop do
    prompt(MESSAGES["apr_prompt"])
    annual_rate = gets().chomp()
    break if number?(annual_rate)
    prompt(MESSAGES["invalid_number"])
  end

  loan_duration = nil
  loop do
    prompt(MESSAGES["loan_duration_prompt"])
    loan_duration = gets().chomp()
    break if integer?(loan_duration)
    prompt(MESSAGES["invalid_loan_duration"])
  end

  prompt(MESSAGES["calculating"])
  Kernel.sleep(1)
  prompt(MESSAGES["result"])

  prompt(MESSAGES["repeat?"])
  another_calculation = gets().chomp()
  continue = another_calculation.upcase == 'Y'

  break unless continue
end

prompt(MESSAGES["goodbye"])
