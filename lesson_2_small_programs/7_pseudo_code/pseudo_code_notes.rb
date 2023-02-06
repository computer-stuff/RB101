# Ex. of pseudo-code for a method that determines which number is greatest in a collection 
# Given a collection of integers.

# Iterate through the collection one by one.
#   - save the first value as the starting value.
#   - for each iteration, compare the saved value with the current value.
#   - if the saved value is greater, or it's the same
#     - move to the next value in the collection
#   - otherwise, if the current value is greater
#     - reassign the saved value as the current value

# After iterating through the collection, return the saved value.



# Therefore, there are two layers to solving any problem:

# 1. The logical problem domain layer.
# 2. The syntactical programming language layer.



# Formal Pseudo-Code 

# Still use English, but with the help of some keywords
# to help breakdown the programming logic into concrete commands.
# Here are some key words:

# KEYWORD	=> meaning

# START	=> start of the program
# SET	=> sets a variable we can use for later
# GET	=> retrieve input from user
# PRINT => displays output to user
# READ	=> retrieve value from variable
# IF / ELSE IF / ELSE	=> show conditional branches in logic
# WHILE	=> show looping logic
# END	=> end of the program



# EX. Translating the above to a more formal pseudo-code

# START

# # Given a collection of integers called "numbers"

# SET iterator = 1
# SET saved_number = value within numbers collection at space 1

# WHILE iterator <= length of numbers
#   SET current_number = value within numbers collection at space "iterator"
#   IF saved_number >= current_number
#     go to the next iteration
#   ELSE
#     saved_number = current_number

#   iterator = iterator + 1

# PRINT saved_number

# END



# Finally we translate the formal pseudo-code to program code. 
# This way we can verify that the logic is sound. 
# This is where some choices may differ from the pseudo-code and become language specific choices. 

# Program Code 

# def find_greatest(numbers)
#   saved_number = numbers[0]

#   numbers.each do |num|
#     if saved_number >= num
#       next
#     else
#       saved_number = num
#     end
#   end

#   saved_number
# end


# Now is the time to improve the code from a lower layer
# at the programming language level.

# This was a simple example and most problems will be more difficult 
# You won't be able to to detail out the entire problem first in pseudo-code, then translate all of it into Ruby. 
# pseudo-code is a guess at the solution and ther's no verification that the logic is correct
# only once you translate it to actual programming code is the logic being verified. 

# For more difficult problems you can take a piecemeal approach to applying pseudo-code
# translate each piece to Ruby code verify the piece of logic is correct then move on to next piece. 
# Slowly loading the problem into your brain, verifying the logic each step along the way.

# You don't need to use pseudocode for every bit of code you write
# especially once you get down to the individual method level.
# but it's good practice and will help to overcome problems in short term and prepare you for assesments. 



# Transition from casual psuedo-code to formal psuedo-code to Ruby 
# starts with pseudo-code for a method that determines which number is greatest in a collection.



# Given a collection of integers.

# Iterate through the collection one by one.
#   - save the first value as the starting value.
#   - for each iteration, compare the saved value with the current value.
#   - if the saved value is greater, or it's the same
#     - move to the next value in the collection
#   - otherwise, if the current value is greater
#     - reassign the saved value as the current value

# After iterating through the collection, return the saved value.



# START

# # Given a collection of integers called "numbers"

# SET iterator = 1
# SET saved_number = value within numbers collection at space 1

# WHILE iterator <= length of numbers
#   SET current_number = value within numbers collection at space "iterator"
#   IF saved_number >= current_number
#     go to the next iteration
#   ELSE
#     saved_number = current_number

#   iterator = iterator + 1

# PRINT saved_number

# END


def find_greatest(numbers)
  saved_number = numbers[0]

  numbers.each do |num|
    if saved_number >= num
      next
    else
      saved_number = num
    end
  end

  saved_number
end