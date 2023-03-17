# def prompt(message)
#   puts("=> #{message}")
# end

# loop do 
#   prompt("Welcome to the Mortgage Calculator!")
#   prompt("Would you like to calculate your monthly payment? (Type 'Y' if yes)")

#   # answer = ''
#   # loop do 
#   #   answer = gets.chomp

#   #   if answer.downcase.start_with?('y')
#   #     prompt("What is your loan amount?")
#   #   else 
#   #     break
#   #   end
#   # end

#   # loan_amount = ''
#   # loop do 
#   #   amount = gets.chomp

#   #   if amount.empty? || amount.to_f < 0 
#   #     prompt("Must enter a positive number.")
#   #   else
#   #     break
#   #   end
#   # end


#   answer = ''
#   loop do 
#     answer = gets.chomp

#     if answer.downcase.start_with?('y')
#       prompt("Great, let's get started! Please press any key to begin.")
#     else
#       break
#     end
#   end

#   prompt("What is your loan amount?")

#   loan_amount = ''
#   loop do 
#     loan_amount = gets.chomp

#     if loan_amount.empty? || loan_amount.to_f < 0 
#       prompt("Must enter a positive number.")
#     else
#       break
#     end
#   end

#   prompt("What is your APR (Anual Percentage rate)?")
#   prompt("(Example: 5 for 5% or 3.75 for 3.75%)")

#   interest_rate_anual = ''
#   loop do 
#     interest_rate_anual = gets.chomp

#     if interest_rate_anual.empty? || interest_rate_anual.to_f < 0
#       prompt("Must enter positive number.")
#     else
#       break
#     end
#   end

#   prompt("What is your loan duration (in years)?")

#   years = ''
#   loop do 
#     years = gets.chomp

#     if years.empty? || years.to_i < 0
#       prompt("Plesae enter a valid number.")
#     else 
#       break
#     end
#   end

#   apr = interest_rate_anual.to_f / 100
#   monthly_interst_rate = apr /12
#   months = years.to_i * 12

#   monthly_payment = loan_amount.to_f * 
#                     (monthly_interst_rate /
#                     (1 - (1 + monthly_interst_rate)**(-months)))

#   prompt("Your monthly payment is : #{monthly_payment}")

#   prompt("Would you like to calculate another mortgage rate?")
#   answer = gets.chomp

#   break unless answer.downcase.start_with('y')
# end

# prompt ("Thank you for using the Mortgage Calculator. Have a nice day!")







# LS SOLUTION:

# def prompt(message)
#   Kernel.puts("=> #{message}")
# end

# loop do
#   prompt("Welcome to Mortgage Calculator!")
#   prompt("-------------------------------")

#   prompt("What is the loan amount?")

#   amount = ''
#   loop do
#     amount = Kernel.gets().chomp()

#     if amount.empty?() || amount.to_f() < 0
#       prompt("Must enter positive number.")
#     else
#       break
#     end
#   end

#   prompt("What is the interest rate?")
#   prompt("(Example: 5 for 5% or 2.5 for 2.5%)")

#   interest_rate = ''
#   loop do
#     interest_rate = Kernel.gets().chomp()

#     if interest_rate.empty?() || interest_rate.to_f() < 0
#       prompt("Must enter positive number.")
#     else
#       break
#     end
#   end

#   prompt("What is the loan duration (in years)?")

#   years = ''
#   loop do
#     years = Kernel.gets().chomp()

#     if years.empty?() || years.to_i() < 0
#       prompt("Enter a valid number")
#     else
#       break
#     end
#   end

#   annual_interest_rate = interest_rate.to_f() / 100
#   monthly_interest_rate = annual_interest_rate / 12
#   months = years.to_i() * 12

#   monthly_payment = amount.to_f() *
#                     (monthly_interest_rate /
#                     (1 - (1 + monthly_interest_rate)**(-months)))

#   prompt("Your monthly payment is: $#{format('%.2f', monthly_payment)}")

#   prompt("Another calculation?")
#   answer = Kernel.gets().chomp()

#   break unless answer.downcase().start_with?('y')
# end

# prompt("Thank you for using the Mortgage Calculator!")
# prompt("Good bye!")






# def prompt(message)
#   puts("=> #{message}")
# end

# loop do 
#   prompt("Welcome to the Mortgage Calculator!")
#   prompt("Would you like to calculate your monthly payment? (Type 'Y' if yes)")

#   # answer = ''
#   # loop do 
#   #   answer = gets.chomp

#   #   if answer.downcase.start_with?('y')
#   #     prompt("What is your loan amount?")
#   #   else 
#   #     break
#   #   end
#   # end

#   # loan_amount = ''
#   # loop do 
#   #   amount = gets.chomp

#   #   if amount.empty? || amount.to_f < 0 
#   #     prompt("Must enter a positive number.")
#   #   else
#   #     break
#   #   end
#   # end


#   answer = ''
#   loop do 
#     answer = gets.chomp

#     if answer.downcase.start_with?('y')
#       prompt("Great, let's get started! Please press any key to begin.")
#     else
#       break
#     end
#   end

#   prompt("What is your loan amount?")

#   loan_amount = ''
#   loop do 
#     loan_amount = gets.chomp

#     if loan_amount.empty? || loan_amount.to_f < 0 
#       prompt("Must enter a positive number.")
#     else
#       break
#     end
#   end

#   prompt("What is your APR (Anual Percentage rate)?")
#   prompt("(Example: 5 for 5% or 3.75 for 3.75%)")

#   interest_rate_anual = ''
#   loop do 
#     interest_rate_anual = gets.chomp

#     if interest_rate_anual.empty? || interest_rate_anual.to_f < 0
#       prompt("Must enter positive number.")
#     else
#       break
#     end
#   end

#   prompt("What is your loan duration (in years)?")

#   years = ''
#   loop do 
#     years = gets.chomp

#     if years.empty? || years.to_i < 0
#       prompt("Plesae enter a valid number.")
#     else 
#       break
#     end
#   end

#   apr = interest_rate_anual.to_f / 100
#   monthly_interst_rate = apr /12
#   months = years.to_i * 12

#   monthly_payment = loan_amount.to_f * 
#                     (monthly_interst_rate /
#                     (1 - (1 + monthly_interst_rate)**(-months)))

#   prompt("Your monthly payment is : #{monthly_payment}")

#   prompt("Would you like to calculate another mortgage rate?")
#   answer = gets.chomp

#   break unless answer.downcase.start_with('y')
# end

# prompt ("Thank you for using the Mortgage Calculator. Have a nice day!")


















###############################################
#### falls apart at .start_with? at bottom 

# def prompt(message)
#   puts("=> #{message}")
# end

# answer = ""
# loop do 
#   prompt("Welcome to the Mortgage Calculator!")

#   (!answer.eql?("Y") || !answer.eql?.downcase("N"))

#   prompt("Would you like to calculate your monthly payment?('Y' for yes or 'N' for no)")
#   answer = gets.chomp.upcase

#   unless answer == "Y"
#     break
#   end

#   prompt("What is your loan amount?")

#   loan_amount = ''
#   loop do 
#     loan_amount = gets.chomp

#     if loan_amount.empty? || loan_amount.to_f < 0 
#       prompt("Must enter a positive number.")
#     else
#       break
#     end
#   end

#   prompt("What is your APR (Anual Percentage rate)?")
#   prompt("(Example: 5 for 5% or 3.75 for 3.75%)")

#   interest_rate_anual = ''
#   loop do 
#     interest_rate_anual = gets.chomp

#     if interest_rate_anual.empty? || interest_rate_anual.to_f < 0
#       prompt("Must enter positive number.")
#     else
#       break
#     end
#   end

#   prompt("What is your loan duration (in years)?")

#   years = ''
#   loop do 
#     years = gets.chomp

#     if years.empty? || years.to_i < 0
#       prompt("Plesae enter a valid number.")
#     else 
#       break
#     end
#   end

#   apr = interest_rate_anual.to_f / 100
#   monthly_interst_rate = apr /12
#   months = years.to_i * 12

#   monthly_payment = loan_amount.to_f * 
#                     (monthly_interst_rate /
#                     (1 - (1 + monthly_interst_rate)**(-months)))

#   prompt("Your monthly payment is : #{monthly_payment}")

#   prompt("Would you like to calculate another mortgage rate?")
#   answer = gets.chomp

#   break unless answer.downcase.starts_with('y')
# end

# prompt ("Thank you for using the Mortgage Calculator. Have a nice day!")










def prompt(message)
  puts("=> #{message}")
end

answer = ""
loop do 
  prompt("Welcome to the Mortgage Calculator!")

  (!answer.eql?("Y") || !answer.eql?.downcase("N"))

  prompt("Would you like to calculate your monthly payment?('Y' for yes or 'N' for no)")
  answer = gets.chomp.upcase

  unless answer == "Y"
    prompt ("Thank you for using the Mortgage Calculator. Have a nice day!") 
    break
  end

  prompt("What is your loan amount?")

  loan_amount = ''
  loop do 
    loan_amount = gets.chomp

    if loan_amount.empty? || loan_amount.to_f < 0 
      prompt("Must enter a positive number.")
    else
      break
    end
  end

  prompt("What is your APR (Anual Percentage rate)?")
  prompt("(Example: 5 for 5% or 3.75 for 3.75%)")

  interest_rate_anual = ''
  loop do 
    interest_rate_anual = gets.chomp

    if interest_rate_anual.empty? || interest_rate_anual.to_f < 0
      prompt("Must enter positive number.")
    else
      break
    end
  end

  prompt("What is your loan duration (in years)?")

  years = ''
  loop do 
    years = gets.chomp

    if years.empty? || years.to_i < 0
      prompt("Plesae enter a valid number.")
    else 
      break
    end
  end

  apr = interest_rate_anual.to_f / 100
  monthly_interst_rate = apr /12
  months = years.to_i * 12

  monthly_payment = loan_amount.to_f * 
                    (monthly_interst_rate /
                    (1 - (1 + monthly_interst_rate)**(-months)))

  prompt("Your monthly payment is : #{monthly_payment}")

  prompt("Would you like to calculate another mortgage rate?")
  answer = gets.chomp

 prompt ("Thank you for using the Mortgage Calculator. Have a nice day!") 
 break unless answer.downcase.start_with?('y')

end



####### Notes
# Need to make it so you can only enter valid numbers/integers/floats so it won't accept letters/characters
# Change it so that it jumps back to "What is your loan amount" not all the way to the begining 
# Add error msgs for characters and not actually calculating a number. 