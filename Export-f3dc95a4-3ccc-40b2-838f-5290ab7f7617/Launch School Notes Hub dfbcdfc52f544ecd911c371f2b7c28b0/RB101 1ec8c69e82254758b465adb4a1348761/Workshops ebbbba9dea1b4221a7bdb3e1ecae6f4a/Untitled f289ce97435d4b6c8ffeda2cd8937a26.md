# Untitled

Class: LS
Created: January 24, 2023 11:19 AM
Reviewed: No
TA/Lead: Matic Kocijančič
Type: Spot Session

# Spot Sessions:

### Code:

```ruby
a = "Hello"
b = a
a = "Goodbye"

puts a
puts b

# On line 1 the variable assigned to the string "Hello"
# On line 2 the letter b is assigned to the letter a 
# On line 3 the letter a is changed to equal the string "Goodbye"

# On line 5 a is printed to the screen 
# On line 6 b is printed to the screen 

# The output for a will be 

=begin
P. Understand the Problem 
  Explicit Requirements:
  - input is an array containing string objects 
  - output is a new string comprised of the index of the letter of each words
  at it's position in the original array 
e.g. nth_char(['no', 'oh']) index 0 of the first word is 
'n' which will be added to the new string and then index 2 
of the second word is 'h' which will be appeneded 
to make 'nh'

Implicit Requirements:
-special characters like '-' does not start a new word.
-if its is empty return and empty array 

Clarifications /Questions:

E: Examples/Edge Cases 
p nth_char(['yoda', 'best', 'has']) == 'yes'

D: Data Structures
-input: array 
-output: string
- possible intermediary structure: array to get the specific index that you need 

Algorithm 
def nth_char(arr)
  -initialize sequence_amaount to arr.size 
initialize index_position 

def nth_char(arr)
  sequence_amount = arr.size 
  index_position = 0 
  nth_word = ''
  sequence_amount.times do |n|
    nth_word += arr[n][n]
  end
    nth_word
end 

p nth_char(['yoda', 'best', 'has']) == 'yes'

complete the function that takes an array of words

you must concatenate the nth letter from each word to construct a new word 

####################

=begin

# Introduction

The wave (known as the Mexican wave in the English-speaking world outside North America) is an example of metachronal rhythm achieved in a packed stadium when successive groups of spectators briefly stand, yell, and raise their arms. Immediately upon stretching to full height, the spectator returns to the usual seated position.

The result is a wave of standing spectators that travels through the crowd, even though individual spectators never move away from their seats. In many large arenas the crowd is seated in a contiguous circuit all the way around the sport field, and so the wave is able to travel continuously around the arena; in discontiguous seating arrangements, the wave can instead reflect back and forth through the crowd. When the gap in seating is narrow, the wave can sometimes pass through it. Usually only one wave crest will be present at any given time in an arena, although simultaneous, counter-rotating waves have been produced. (Source [Wikipedia](https://en.wikipedia.org/wiki/Wave_(audience)))

# Task

In this simple Kata your task is to create a function that turns a string into a Mexican Wave. You will be passed a string and you must return that string in an array where an uppercase letter is a person standing up. 

# Rules

 1.  The input string will always be lower case but maybe empty.  
 2.  If the character in the string is whitespace then pass over it as if it was an empty seat

# Example

wave("hello") => ["Hello", "hEllo", "heLlo", "helLo", "hellO"]

=end

p wave("hello") == ["Hello", "hEllo", "heLlo", "helLo", "hellO"]
p wave("codewars") == ["Codewars", "cOdewars", "coDewars", "codEwars", "codeWars", "codewArs", "codewaRs", "codewarS"]
p wave("") == []
p wave("two words") == ["Two words", "tWo words", "twO words", "two Words", "two wOrds", "two woRds", "two worDs", "two wordS"]
p wave(" gap ") == [" Gap ", " gAp ", " gaP "]

a = 4 
b = 2  # say variable is initizalized here to integer 2 

loop do 
  c = 3  # say variable is assigned to integer 3 
  a = c  # dont say assigned to variable c say reassigned to same object that variable C is pointing at which is 3.  
  break
end

puts a 
puts b 

#####################################

=begin

# Introduction

The wave (known as the Mexican wave in the English-speaking world outside North America) is an example of metachronal rhythm achieved in a packed stadium when successive groups of spectators briefly stand, yell, and raise their arms. Immediately upon stretching to full height, the spectator returns to the usual seated position.

The result is a wave of standing spectators that travels through the crowd, even though individual spectators never move away from their seats. In many large arenas the crowd is seated in a contiguous circuit all the way around the sport field, and so the wave is able to travel continuously around the arena; in discontiguous seating arrangements, the wave can instead reflect back and forth through the crowd. When the gap in seating is narrow, the wave can sometimes pass through it. Usually only one wave crest will be present at any given time in an arena, although simultaneous, counter-rotating waves have been produced. (Source [Wikipedia](https://en.wikipedia.org/wiki/Wave_(audience)))

# Task

In this simple Kata your task is to create a function that turns a string into a Mexican Wave. You will be passed a string and you must return that string in an array where an uppercase letter is a person standing up. 

# Rules

 1.  The input string will always be lower case but maybe empty.  
 2.  If the character in the string is whitespace then pass over it as if it was an empty seat

# Example

wave("hello") => ["Hello", "hEllo", "heLlo", "helLo", "hellO"]

=end
# def wave(str)
  
#   #number_letters = str.scan(/[a-z]/).size
#   #number_letters.times do 
#   str.scan(/[a-z]/).size
#   str.chars.each_with_index do |x,i|
#     if x =~ /[a-z]/
#       a = str
#       a[i] = a[i].upcase
#       p a
#       result << a

#     end
#   end
#   result
# end

=begin
given a string
create temp Array
loop string amount of times
  next if current char is empty
  shovel string with current char upcase into temp arr 

return temp arr

# next if char == ' '

=end
def wave(string)
  temp_arr = []

  string.size.times do |idx|
    next if string[idx] == ' '
    arr = string.chars
    arr[idx] = arr[idx].upcase
    temp_arr << arr.join
  end

  temp_arr
  # string.chars.each do |char|
    
  #   char.upcase
  #   temp_arr << 
  # end
end

#### coder wars most popular answer 
def wave(str)
  result = []
  chars = str.downcase.chars
  chars.each_with_index do |char, idx|
    next if char == " "
    result << str[0...idx] + char.upcase
      + str[idx+1..-1]
  end
  result
end

p wave("hello") == ["Hello", "hEllo", "heLlo", "helLo", "hellO"]
p wave("codewars") == ["Codewars", "cOdewars", "coDewars", "codEwars", "codeWars", "codewArs", "codewaRs", "codewarS"]
p wave("") == []
p wave("two words") == ["Two words", "tWo words", "twO words", "two Words", "two wOrds", "two woRds", "two worDs", "two wordS"]
p wave(" gap ") == [" Gap ", " gAp ", " gaP "]
```

### Written Notes:

- Lead = Matic
- Participants
    - Sherece - live in FL RB130 here for review
    - Zane_Lee - Charleston, SC at 109 interview stage
    - Lisa - Georgia at Interview 109 stage
- Spotwiki = where to find problems to work on
    - [https://fine-ocean-68c.notion.site/SPOT-Wiki-b58ff38ab84440bdb96797e59ee5fd34](https://www.notion.so/SPOT-Wiki-b58ff38ab84440bdb96797e59ee5fd34)
- Problem one:

```ruby
a = "Hello"
b = a
a = "Goodbye"

puts a
puts b 
```

- On line 1 you would say that the variable **a** is assigned to the string “Hello”.
- On line 2 the variable b is assigned to the same object (the string “Hello”) that the a variable is assigned to.
- On line 3 the variable a is reassigned to the string “Goodbye”.
- On line 5 the variable a is printed to the screen with an output of *Goodbye* and a return of *nil* bc puts always returns *nil.*
- On line 6 the output is *Hello* and the return is again *nil* bc of *****puts.*****

- Problem two:

```ruby
a = 4
b = 2 # say variable is initizalized here to integer 2

loop do
c = 3 # say variable is assigned to integer 3
a = c # dont say assigned to variable c say reassigned to same object that variable C is pointing at which is 3.  
 break
end

puts a
puts b
```

- Normally you have to assign a variable outside of the loop b4 you can access it inside the loop.
    - can even be assigned to an ‘ ‘ empty string or even nil since it will be reassigned in the loop.
- For the above bc we are calling a not c we can get the reassigned value of a from the loop bc it is being reassigned to 3 the same object as the c variable is assigned to within the loop.
- DON’T say assigned to variable - We reassign a to what the c variable is pointing at which is the integer 3 so they are pointing to same object.
- For this problem say the variables a and b are initialized outside of the loop.

- Problem 3:
- From spot wiki last problem

```ruby
=begin

# Introduction

The wave (known as the Mexican wave in the English-speaking world outside North America) is an example of metachronal rhythm achieved in a packed stadium when successive groups of spectators briefly stand, yell, and raise their arms. Immediately upon stretching to full height, the spectator returns to the usual seated position.

The result is a wave of standing spectators that travels through the crowd, even though individual spectators never move away from their seats. In many large arenas the crowd is seated in a contiguous circuit all the way around the sport field, and so the wave is able to travel continuously around the arena; in discontiguous seating arrangements, the wave can instead reflect back and forth through the crowd. When the gap in seating is narrow, the wave can sometimes pass through it. Usually only one wave crest will be present at any given time in an arena, although simultaneous, counter-rotating waves have been produced. (Source [Wikipedia](<https://en.wikipedia.org/wiki/Wave_(audience)>))

# Task

In this simple Kata your task is to create a function that turns a string into a Mexican Wave. You will be passed a string and you must return that string in an array where an uppercase letter is a person standing up.

# Rules

1.  The input string will always be lower case but maybe empty.  
 2.  If the character in the string is whitespace then pass over it as if it was an empty seat

# Example

wave("hello") => ["Hello", "hEllo", "heLlo", "helLo", "hellO"]

=end

# def wave(str)

# #number_letters = str.scan(/[a-z]/).size

# #number_letters.times do

# str.scan(/[a-z]/).size

# str.chars.each_with_index do |x,i|

# if x =~ /[a-z]/

# a = str

# a[i] = a[i].upcase

# p a

# result << a

# end

# end

# result

# end

=begin
given a string
create temp Array
loop string amount of times
next if current char is empty
shovel string with current char upcase into temp arr

return temp arr

# next if char == ' '

=end
def wave(string)
temp_arr = []

string.size.times do |idx|
next if string[idx] == ' '
arr = string.chars
arr[idx] = arr[idx].upcase
temp_arr << arr.join
end

temp_arr

# string.chars.each do |char|

# char.upcase

# temp_arr <<

# end

end

#### coder wars most popular answer

def wave(str)
result = []
chars = str.downcase.chars
chars.each_with_index do |char, idx|
next if char == " "
result << str[0...idx] + char.upcase + str[idx+1..-1]
end
result
end

p wave("hello") == ["Hello", "hEllo", "heLlo", "helLo", "hellO"]
p wave("codewars") == ["Codewars", "cOdewars", "coDewars", "codEwars", "codeWars", "codewArs", "codewaRs", "codewarS"]
p wave("") == []
p wave("two words") == ["Two words", "tWo words", "twO words", "two Words", "two wOrds", "two woRds", "two worDs", "two wordS"]
p wave(" gap ") == [" Gap ", " gAp ", " gaP "]
```