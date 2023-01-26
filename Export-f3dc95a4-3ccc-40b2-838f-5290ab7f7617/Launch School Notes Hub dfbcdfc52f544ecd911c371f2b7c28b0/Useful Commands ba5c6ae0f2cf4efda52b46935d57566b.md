# Useful Commands

<aside>
💡 Frequently used commands. This is a helpful page to [add to your Favorites](https://www.notion.so/7ef7287cee00464d9a813073b02ce24a).

</aside>

# 🦄 Terminal Commands

iTerm helpful hints: 

```ruby
code .  # Will open current directory you are in to VS Code 
```

```ruby

```

```ruby

```

# 🐡 Methods

Methods and their uses:

```ruby
.start_with
break unless answer.downcase.start_with('y')
```

- All strings in Ruby have this method.
- You pass it an argument like on line 2 to say if it starts with that letter.

```ruby
.downcase 
```

- Will downcase the input/output so that even if someone types a A or a it won’t matter.

```ruby
.empty?
variable_name.empty?
```

- Checks if the variable in this case is an empty string or not.

```ruby
%w(1 2 3 4).include?(variable_name)
%w(1 2 3 4).include?('3') # Return will be true bc it does include '3'. 
%w(1 2 3 4).include?('6') # Return will be false bc it does not include '6'. 
%w(1 2 3 4).include?(3) # Return will be false bc 3 is not a string like '3'. 
```

- The ***********.include?( )*********** method checks in an array includes …
- Array in Ruby has this method
- %w(1 2 3 4) just equals and array of strings == [”1”, “2”, “3”, “4”]

```ruby
.tap 

# From Ruby-doc

(1..10)                  .tap {|x| puts "original: #{x}" }
  .to_a                  .tap {|x| puts "array:    #{x}" }
  .select {|x| x.even? } .tap {|x| puts "evens:    #{x}" }
  .map {|x| x*x }        .tap {|x| puts "squares:  #{x}" }

# From LS

(1..10)                 .tap { |x| p x }   # 1..10
 .to_a                  .tap { |x| p x }   # [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
 .select {|x| x.even? } .tap { |x| p x }   # [2, 4, 6, 8, 10]
 .map {|x| x*x }        .tap { |x| p x }   # [4, 16, 36, 64, 100]

mapped_and_tapped = mapped_array.tap { |value| p 'hello' }   # ‘hello’

mapped_and_tapped                                            # => [2, 3, 4]

```

- Object instance method `tap`
- It simply passes the calling object into a block, then returns the object
- Yields self to the block, and then returns self
- Primary purpose = to “tap into” a method chain, in order to perform operations on intermediate results within the chain.

# 🦉 Wording

Helpful notes about how to say things:

- Before a loop you are instantiating or initializing a variable outside of the loop so you can reference it later.

# 👽 Operators

### Ternary Operators:

```ruby
condition ? true : false
```

- Ternary operators in Ruby are composed of 3 parts
    - A conditional statement and two possible outcomes
- A ternary gives you a way to write a compact if/else expression in just one line of code

```ruby
if apple_stock > 1
  :eat_apple
else
  :buy_apple
end

#########################

apple_stock > 1 ? :eat_apple : :buy_apple
```

- ****************************The condition****************************  = the first part of the operator is the condition you want to check if it’s true or not
- Then comes the ****`?`**** this is how Ruby knows you are writing a ternary operator
- Then there’s whatever code you want to run if the condition turns out to be `true`, ****the first possible outcome.****
- Then a colon `:` the next syntax element
- Lastly, there is the code you want to run if the condition is `false`,  ************************************************************the second possible outcome.************************************************************

```ruby
"chocolate".size > 4 ? "More than four characters" : "Less than four characters"
```

- Condition ⇒ `"chocolate".size > 4`
- If True ⇒ `"More than four characters"`
- Else ⇒ `"Less than four characters"`
- note: even if the method name ends in a question mark ? make sure to still add one between the condition and the possible outcomes

- Errors that can occur
    - When calling methods with arguments in a ternary expression always put the `puts` with parentheses, bc Ruby will expect a : right after first possible outcome
    
    ```ruby
    # NOT GOOD DON't DO:
    
    true ? puts "Hello" : puts "Goodbye" # raises a SyntaxError
    false ? puts "Hello" : puts "Goodbye" # raises a SyntaxError
    
    # GOOD DO THIS:
    
    true ? puts("Hello") : puts("Goodbye")    # => Hello
    false ? (puts "Hello") : (puts "Goodbye") # => Goodbye
    
    # BEST OPTION 
    # You want the true and false clauses of a ternary expression to be as simple
    # as possible. 
    puts(true ? "Hello" : "Goodbye")   # => Hello
    puts(false ? "Hello" : "Goodbye")  # => Goodbye
    ```
    

# 👻 Other: to be sorted later

## Heredoc:

- *heredoc* in Ruby allow us to write multi-lined strings while maintaining the original indentation and formatting.
- For syntax start with the symbol

```ruby
<<-

Then a word that represents the name of the heredoc 
<<- HJK

Then the heredoc contents
<<- HJK
	blah
	blah 
fjksjfal

Then close heredoc with the same word on its own line 
<<- HJK
	blah
	blah 
fjksjfal
HJK 
```

- Can also use %Q
- You will get an extra newline at the start and end of this string
    - A heredoc or calling the *****strip***** method solves that.

```ruby
query = %Q(

	Article about heredocs

)
```

- The *MSG*s are called delimiters and can be anything they just need to match
- Anything in between the delimiters is treated as a multi-line string

```ruby
operator_prompt = <<-MSG
  What operation would you like to perform?
	1) add
	2) substract
	3) multiply 
	4) divide 
MSG

prompt(operator_prompt)

blah_blah = <<-HHH
	kajfkdls
	jklsjdaflk
	jklsjdkfa
	jfklsjdfk
	kjlgsdjklfjdsaj
HHH
```