# # a method that returns the sum of two integers

# # casual pseudo-code
# Define a method 
# Get number1 from user have result turn into an integer 
# Get number2 from user have result turn into an integer 

# Get results from number1 and number2 questions 
# add the two numbers 
# Return the sum of the two numbers to the user 

# # formal pseudo-code 
# START 

# SET method definition 
# GET number1
# GET number2
# READ number1 and number2 

# ADD number1 + number2 
# SET variable for sum 

# PRINT sum

# END

# Ruby 

# def add(number1, number2)
#  return number1 + number2
# end 

# puts add(6, 6)


# # a method that takes an array of strings, and returns a string that is all those strings concatenated together
#THIS ONE IS WRONG JUST HERE FOR EXAMPLE 
# def merge_array(sentence)
#   puts sentence
#   ['Hi', 'my', 'name', 'is', 'Nina!'].join(' ')
# end

# puts merge_array(['Hi', 'my', 'name', 'is', 'Emil!'])


# a method that takes an array of strings, and returns a string that is all those strings concatenated together

# RUBY CORRECT VERSION
# def merge_array(sentence)
#   sentence.join(' ')
# end

# puts merge_array(['Hi', 'my', 'name', 'is', 'Nina!'])



# a method that takes an array of integers, and returns a new array with every other element from the original array, starting with the first element. For instance:
# every_other([1,4,7,2,5]) # => [1,7,5]


# This will select every other starting at index 1 and will return => [4,2]
# def every_other(number)
#   number.select.with_index{|_,i| (i+1) % 2 == 0}
# end 

# puts every_other([1,4,7,2,5])


# This will provide correct answers and can test so we see the math/logic and how it is sorting out 
# doesn't matter if line 78 (i-1) is - or + (i+1) 
# This is because the block passed to 'select' filters the elements of the 'number' array 
# based on the value of the index.
# In this case the block includes an element in the new array if the index plus or minus 1 is odd. 
# since the indices of the elements in the 'number' array are 0,1,2,3,4 both the indices plus and minus 1 will be odd for the first, third, and fifth elements of the array. 

# def every_other(number)
#   # number.select.with_index {|_,i| (i+1) % 2 == 1} # Can write it like this or with the do end. 
#   number.select.with_index do |_,i|
#     puts "========"
#     puts "i: #{i}"
#     puts "(i-1): #{(i-1)}"
#     puts "(i-1) % 2: #{(i-1) % 2}"
#     puts "(i-1) % 2  == 1: #{(i-1) % 2  == 1}"
#      (i-1) % 2 == 1
#   end
# end 

# puts every_other([1,4,7,2,5])

# # THIS IS THE OUTPUT FOR THE ABOVE CODE:
# nina@MacBook-Air-4 7_pseudo_code % ruby practice_problems.rb
# ========
# i: 0
# (i-1): -1
# (i-1) % 2: 1
# (i-1) % 2  == 1: true
# ========
# i: 1
# (i-1): 0
# (i-1) % 2: 0
# (i-1) % 2  == 1: false
# ========
# i: 2
# (i-1): 1
# (i-1) % 2: 1
# (i-1) % 2  == 1: true
# ========
# i: 3
# (i-1): 2
# (i-1) % 2: 0
# (i-1) % 2  == 1: false
# ========
# i: 4
# (i-1): 3
# (i-1) % 2: 1
# (i-1) % 2  == 1: true
# 1
# 7
# 5


# def every_other(number)
#   # number.select.with_index {|_,i| (i+1) % 2 == 1} # using {} instead of each do end
#   number.select.with_index do |_,i|
#      (i-1) % 2 == 1 # Can be (i-1) or (i+1) still get same output. 
#   end
# end 

# puts every_other([1,4,7,2,5])



# A method that determines the index of the 3rd occurrence of a given character in a string. For instance, if the given character is 'x' and the string is 'axbxcdxex', the method should return 6 (the index of the 3rd 'x'). 
# If the given character does not occur at least 3 times, return nil.

#This method takes in a string and a character as arguments, and returns the index of the 3rd occurrence of the character in the string. 
# If the character does not occur at least 3 times in the string, the method returns nil.
# The method uses the each_char and with_index methods to iterate over the characters in the string, along with their indices. 
# It maintains a count of the number of times the character has occurred so far, and returns the index of the current character when the count reaches 3.
# If the loop completes without reaching a count of 3, the method returns nil.

# def third_occurrence_index(str, char)
#   count = 0 
#   str.each_char.with_index do |c, i|
#     count += 1 if c == char
#     return i if count == 3
#   end
#   nil 
# end

# str = 'starships'
# char = 's'
# index = third_occurrence_index(str, char)

# puts index


# Written with if statement instead 

# This version of the method is similar to the previous ones, 
# but it uses an if statement to check whether the current character is equal to the given character. 
# If it is, the method increments the count and checks whether the count is equal to 3. 
# If the count is 3, the method returns the index of the current character. 
# If the loop completes without reaching a count of 3, the method returns nil

# def third_occurrence(string, char)
#   count = 0
#   string.chars.each_with_index do |c, i|
#     if c == char
#       count += 1
#       return i if count == 3
#     end
#   end
#   nil
# end

# string = 'smart'
# char = 's'
# index = third_occurrence(string, char)
# puts index



# a method that takes two arrays of numbers and returns the result of merging the arrays. 
# The elements of the first array should become the elements at the even indexes of the returned array, 
# while the elements of the second array should become the elements at the odd indexes. For instance:
# merge([1, 2, 3], [4, 5, 6]) # => [1, 4, 2, 5, 3, 6]
# You may assume that both array arguments have the same number of elements.

def 