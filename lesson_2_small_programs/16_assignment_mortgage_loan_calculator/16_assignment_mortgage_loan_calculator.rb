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