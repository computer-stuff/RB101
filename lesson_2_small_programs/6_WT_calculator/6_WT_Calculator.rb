# ask the use for two numbers
# ask the user for an operation to perform 
# perform the operation on the two numbers 
# output the result



# answer = Kernel.gets.chomp.to_i() 
# Kernel.puts (answer)



# Kernel.puts("Welcome to Calculator!")

# Kernel.puts("What's the first number?")
# number1 = Kernel.gets()

# Kernel.puts(number1)



# something is not right here with ! 
# We'll use the .inspect method (that all Ruby object have)
# to see what's going on.

# Kernel.puts("Welcome to Calculator!")

# Kernel.puts("What's the first number?")
# number1 = Kernel.gets()

# Kernel.puts(number1.inspect) #line addition for .inspect method
# Kernel.puts("The number is: " + number1 + "!")



# Adding in chomp to get rid of new line character from gets

# Kernel.puts("Welcome to Calculator!")

# Kernel.puts("What's the first number?")
# number1 = Kernel.gets().chomp() # () show method invocation 
# # this chomp removes \n from the variable number1 and will remove it whenever it is used 

# Kernel.puts(number1.chomp().inspect()) # this chomp only removes \n from this line 
# # so we would have to use it everytime the variable is called 
# Kernel.puts("The number is: " + number1 + "!")



# # Addition of second number 

# Kernel.puts("Welcome to Calculator!")

# Kernel.puts("What's the first number?")
# number1 = Kernel.gets().chomp()

# puts("What's the second number?")
# number2 = gets.chomp

# # Kernel.puts(number1 + " " + number2) # Sanity check to confirm the above code is working as desired

# puts("What operation would you like to perform? 1) add 2) subtract 3) multiply 4) divide")
# operator = gets.chomp

# # now we have two variable and an operator so now we can perform operation
# # all inputs will be strings so need to remeber to put string representation of '1'

# if operator == '1'
#   result = number1 + number2
# end

# # Right now the result is using string concatination not addition 
# # In order for Ruby to use arithmetic we need to conver the strings above to integers using .to_i method

# puts("The result is #{result}")



# # Adding in .to_i method 

puts("Welcome to Calculator!")

puts("What's the first number?")
number1 = gets.chomp

puts("What's the second number?")
number2 = gets.chomp

puts("What operation would you like to perform? 1) add 2) subtract 3) multiply 4) divide")
operator = gets.chomp

if operator == '1'
  result = number1.to_i + number2.to_i
elsif operator == '2'
  result = number1.to_i - number2.to_i
elsif operator == '3'
  result = number1.to_i * number2.to_i
else 
  result = number1.to_f / number2.to_f  # for division always use .to_f for floats so decimal is NOT omitted 
end

puts("The result is #{result}")



# NOTES

# Always double check in conditionals that you are using == (equality comparison) as oppose to = (an assignment)
# CODE EX. below
# if operator == '1'  # ok
# ...
# if operator = '1'   # will always return true

# Pay attention to what objects you're comparing 
# CODE EX. below
# if operator == 1
# # vs
# if operator == '1'

# Remeber integer division to use floats .to_f method so that decimals are included 

# String#to_i and String#to_f methods are useful but no their limitations

# Characters past a leading valid number (in the given base) are ignored:
# '12.345'.to_i   # => 12
# '12345'.to_i(2) # => 1
# '3.14 (pi to two places)'.to_f # => 3.14

# Returns zero if there is no leading valid number:
# 'abcdef'.to_i # => 0
# '2'.to_i(2)   # => 0
# 'abcdef'.to_f # => 0.0

# Local variables initialized within an if can be accessed outside of the if.

# In Ruby, if expressions can return a value 
# CODE EX. below
# answer = if true
#            'yes'
#          else
#            'no'
#          end
# Kernel.puts(answer)       # => yes
