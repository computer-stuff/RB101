require 'yaml'
MESSAGES = YAML.load_file('4_calculator_messages.yml')

def messages(message, lang='en')
  MESSAGES[lang][message]
end

def prompt(key)
  message = messages(key, LANGUAGE)
  puts("=> #{message}")
end

def number?(input)
  integer?(input) || float?(input)
end

def integer?(input)
  input.to_i.to_s == input
end

def float?(input)
  input.to_f.to_s == input
end

def operation_to_message(op)
  word = case op
  when '1'
    'Adding'
  when '2'
    'Subtracting'
  when '3'
    'Multiplying'
  when '4'
    'Dividing'
  end

  x = "random line of code here"

  word
end

prompt(MESSAGES['welcome'])

name = ''
loop do
  name = gets.chomp

  if name.empty?
    prompt(MESSAGES['valid_name'])
  else
    break
  end
end

prompt("Hi #{name}!")

word = ''
loop do # main loop
  number1 = ''
  loop do
    prompt(MESSAGES["first_number"])
    number1 = gets.chomp

    if integer?(number1)
      break
    elsif float?(number1)
      break
    else
      prompt(MESSAGES["valid_number"])
    end
  end

  number2 = ''
  loop do
    prompt(MESSAGES["second_number"])
    number2 = gets.chomp

    if integer?(number2)
      break
    elsif float?(number2)
      break
    else
      prompt(MESSAGES["valid_number"])
    end
  end

  operator_prompt = <<-MSG
    What operation would you like to perform?
    1) add
    2) subtract
    3) multiply
    4) divide
  MSG

  prompt(operator_prompt)

  operator = ''
  loop do
    operator = gets.chomp

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt(MESSAGES["operator_valid_entry"])
    end
  end

  prompt("#{operation_to_message(operator)} the two numbers...")

  result = case operator
           when '1'
             number1.to_f + number2.to_f
           when '2'
             number1.to_f - number2.to_f
           when '3'
             number1.to_f * number2.to_f
           when '4'
             number1.to_f / number2.to_f
           end

  prompt("The result is #{result}")

  prompt(MESSAGES["another_calculation"])
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
  word
end

prompt(MESSAGES["goodbye"])