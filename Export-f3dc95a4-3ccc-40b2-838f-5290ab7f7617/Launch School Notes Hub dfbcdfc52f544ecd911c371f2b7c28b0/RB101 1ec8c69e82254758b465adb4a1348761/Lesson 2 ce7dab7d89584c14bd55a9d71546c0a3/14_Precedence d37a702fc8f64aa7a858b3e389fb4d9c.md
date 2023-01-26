# 14_Precedence

### Operator Precedence

- The meaning of an expression in Ruby is determined by what is called ****************************************operator precedence.****************************************
- **********Operator precedence ⇒**********   a set of rules that dictate how Ruby determines what operands each operator takes.
- **************************Operands ⇒************************** values (the results of evaluating expressions) that are used by the operator.
- For most operators there are two operands
    - but there are also
        - Unary (takes 1 operand) and Ternary (takes 3 operands) operators

```ruby
2 + 5             # Two operands (2 and 5)
!true             # Unary: One operand (true)
value ? 1 : 2     # Ternary: Three operands (value, 1, 2)
```

- Each operand can be the result of evaluating some other operator and its operands

```ruby
> 3 + 5 * 7
```

- Above there are 2 operands (`+`and`*`) each of which take two numbers as operands. But there are 3 numbers. How do we know what this expression evaluates to?
    - The answer is found with operator precedence.
        - Precedence determines which operand executes first does `+` use `3`and `5` as operands or `3`and `35` (`5 * 7`).
        - it determines whether `*` uses `5`and `7` as operands or `8` (`3+5`) and `7`
        - Precedence determines the meaning of an expression
        - In an expression operators with higher precedence are prioritized over those with lower precedence.
        - Above `*` has higher precedence than `+` so `*` gets passed `5`and `7` as operands which returns `35` as a result.
            - Then `3` and `35` get passed to `+` for the final result of `38`
            - This is as if Ruby inserted ( ) around `(5*7)`
        - If we wanted to prioritize the `+` operator we would just have to put parentheses around `(3 + 5) * 7` and the result would then return `56`
- `3 + 5 * 7` will return ⇒ 38 as a final result
- Parentheses ( ) override the default evaluation order, and can be thought of as having the highest precedence
- Another way to think about ********************precedence******************** is that is controls the order of evaluation.
    - operations involving operators with high precedence get evaluated before operations involving low precedence
- When two operations involve operators of the same precedence, the operation occurs from left-to-right (most of the time)
    - multiple `=` operators evaluate right-to-left
    - this is not a great way to think about it bc ternary operator (`a ? b : c`) and the `||`and `&&` operators can cause confusion
    - Think of precedence as the mechanism used by Ruby to determine which operands get passed to each operator.
- If using 2 or more different operators in an expression, use parentheses to explicitly define the meaning.
- An operator that has higher precedence than another is said to ********bind******** more tightly to its operands

### Evaluation Order

- Precedence is seen to determine the order in which an expression gets evaluated
    - But the evaluation process is more complex
    - Precedence is one part of that in Ruby. The other parts are:
        - left-to-right evaluation
        - right-to-left evaluation
        - short-circuiting
        - ternary expressions
- EX.

```ruby
def value(n)
  puts n
  n
end

puts value(3) + value(5) * value(7)

# OUTPUT

3
5
7
38
```

- Looking at the first 3 lines of output, you might say Ruby is evaluating the expression left-to-right.
    - But the final result proves otherwise
        - The only way you end up with `38` as a result is if `value(5) * value(7)` gets evaluated first
        - both things are happening here
- Operators like `+` and `*` need values that they can work with
    - Method invocations like `value(5)` and `value(7)` are not values.
    - We can’t invoke the `*` operator until we know what values those methods return.
    - In an arithmetic expression
        - Ruby first goes through an expression left-to-right and evaluates everything it can without calling any operators.
        - Above it evaluate `value(3)`, `value(5)`, and `value(7)` first in that order
        - Only then once it has those values does it deal with precedence and re-evaluate the result.
- Right-to-left evaluation occurs when you do multiple assignments `=` or multiple modifiers

### Ternary operator `?:` and short-circuit operators `&&` and `||`

- These are a common source of unexpected behavior where precedence is concerned

```ruby
3 ? 1 / 0 : 1 + 2  # raises error ZeroDivisionError
5 && 1 / 0         # raises error ZeroDivisionError
nil || 1 / 0       # raises error ZeroDivisionError

# What if we modify things so that 1 / 0 isn't needed?

nil ? 1 / 0 : 1 + 2  # 3
nil && 1 / 0         # nil
5 || 1 / 0           # 5
```

- In all 3 of the second case list `1 / 0` never gets executed. (even though operator precedence would suggest that it should be evaluated first
- `nil ? 1 / 0 : 1 +2    # 3` 1/0 isn’t evaluated since its the truthy operand for the `?:`
    - it only gets run when the value to the left of `?` is truthy
    - instead the code returns `3` (`1 + 2`)
- The other two expression don’t evaluate `1 / 0` due to short-circuiting.
- Ruby treats `?:`, `&&`, `||` differently from other operators and doesn’t evaluate subexpression unless it needs them.

- Another source of unexpected behavior occurs when you call methods with arguments in a ternary expression

```ruby
# Error won't work

true ? puts "Hello" : puts "Goodbye" # raises a SyntaxError
false ? puts "Hello" : puts "Goodbye" # raises a SyntaxError
```

- The code above raises a a syntax error since Ruby is unable to understand that `puts` and `"Hello"` go together
    - same thing for `puts` and `"Goodbye"`
    - Ruby expects a `:` right after the first `puts` (which doesn’t make sense)
    - The solution ⇒ use parentheses

```ruby
# Will work 

true ? puts("Hello") : puts("Goodbye")    # => Hello
false ? (puts "Hello") : (puts "Goodbye") # => Goodbye
```

- Above are two examples of how to use parentheses in the body of the ternary and the code will still run
    - but this still isn’t our best option

```ruby
# Best approach with ternary and puts 

puts(true ? "Hello" : "Goodbye")   # => Hello
puts(false ? "Hello" : "Goodbye")  # => Goodbye
```

- You want the true and false clauses of a ternary expression to be as simple as possible
- So instead seen above you can put the `puts` outside of the body of the ternary expression and just put the whole expression in the `()` parentheses
- The code above will work without parentheses with the `puts` outside the body of the ternary expression, but for clarity always just use the `()`

### Diving Deeper

- The use case below: is a simple `map` invocation on a three-element array, which increments each element by one

```ruby
array = [1, 2, 3]

array.map { |num| num + 1 }     # => [2, 3, 4]
```

- It returns `[1, 2, 3]`
- If we prepend this method invocation with a `p` we can display the results

```ruby
p array.map { |num| num + 1 }      #  outputs [2, 3, 4]
                                   #  => [2, 3, 4]
```

- Almost the same as the first example but the difference is:
    - In the above, the return value of `map` then gets passed into `p` as an argument, which outputs `[2, 3, 4]`
- But what happens in this next example:

```ruby
array.map do |num|
  num + 1
end                                 #   => [2, 3, 4]
```

- It’s the same `map` call but now with a `do...end` block
    - Regardless of the form the block takes, the code should do the same thing.
- But if we do the same as we did with the `{ }` block example, and prepend the code with `p`
    - We get a different output and return 🤔

```ruby
p array.map do |num|
  num + 1                   #  outputs #<Enumerator: [1, 2, 3]:map>
end                           #  => #<Enumerator: [1, 2, 3]:map>
```

- It’s interesting that we get a different return and output value
    - When everything is identical except for the way the blocks are passed in.
- **Blocks have the lowest precedence of all operators.**
- But between the two types of blocks `{ }` has a slightly higher precedence than `do...end`
    - This has an effect on which method call the block gets passed to.
- How exactly did we get `#<Enumerator: [1, 2, 3,]:map>` ?
    - Bc `do...end` is the “weakest” of all the operators ⇒ `[array.map](http://array.map)` gets bound to `p`
    - This first invokes `[array.map](http://array.map)` ⇒ returning an Enumerator object
    - The Enumerator is then passed to `p` along with the block
    - `p` prints the Enumerator, but doesn’t do anything with the block
    - `p` doesn’t take in a block
        - As with all methods called with a block that don’t accept one, the block just gets ignored

```ruby
p array.map                   # outputs <Enumerator: [1, 2, 3]:map>

p array.map do |num|
  num + 1
end                           # outputs <Enumerator: [1, 2, 3]:map>
```

- In other words, the binding between a method name and a method’s argument (`p` and the return value of `[array.map](http://array.map)`) is slightly tighter than the binding between a method call and a `do...end` block
    - Thus, `[array.map](http://array.map)` gets executed first, then the return value and the block get passed to `p` as separate arguments
- A `{}`  block, has higher priority so it binds more tightly to `[array.map](http://array.map)`
    - Therefore, when we use `{}`, `[array.map](http://array.map)` is called with the block, then the return value of `array.map` gets passed to `p`
- The code below is equivalent to the code above, but this time we use parentheses to visualize the order

```ruby
array = [1, 2, 3]

p(array.map) do |num|
	num + 1                        # <Enumerator: [1, 2, 3]:map>                                  
end                              # => <Enumerator: [1, 2, 3]:map>            

p(array.map { |num| num + 1 })   # [2, 3, 4]
																 # => [2, 3, 4]
```

### Ruby’s `tap` method

- There’s a method that will help us validate what we’ve shown above (this is a great debugging tool too)
- The Object instance method `tap`
    - It simply passes the calling object back into a block, then returns that object.
- Ex.

```ruby
mapped_array = array.map { |num| num + 1 }

mapped_array.tap { |value| p value }              # => [2, 3, 4]
```

- `array.map { |num| num + 1 }` resolves to `[2, 3, 4]`
    - which then gets used to call `tap`
    - `tap` takes the calling object and passes it to the block argument
    - then returns the same object
    - typically you will do something like print the object inside that block

```ruby
mapped_and_tapped = mapped_array.tap { |value| p 'hello' }   # ‘hello’

mapped_and_tapped                                            # => [2, 3, 4]
```

- Another use case for this method is to debug intermediate objects in method chains
    - This is featured below
        - The transformation don and the resulting object at every step is now visible to us by just using `tap`

```ruby
(1..10)                 .tap { |x| p x }   # 1..10
 .to_a                  .tap { |x| p x }   # [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
 .select {|x| x.even? } .tap { |x| p x }   # [2, 4, 6, 8, 10]
 .map {|x| x*x }        .tap { |x| p x }   # [4, 16, 36, 64, 100]
```

- Make sure to always use parentheses whenever you mix operators in an expression