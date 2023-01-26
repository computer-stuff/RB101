# 11_WT: Refactoring Calculator

- `.start_with` method
- `operation_to_message` method is a little dangerous bc we’re relying on the case statement being the last expression in the method
    - what if we needed to add code after the case statement within the method?
- Most Rubyists don’t invoke methods with parentheses, unless they’re passing in an argument. Some people even leave off the () when passing in an argument like `prompt “hi there”` **************instead of `prompt(”hi there”)`
- We don’t have to use Kernel. either we can omit it
    - when we write ruby code that’s not in a class, we are working within an object called main ********which is an instance of `Object`
    - The `Kernel` module is automatically loaded by `Object` giving us access to all of its methods

```ruby
irb 001> self
=> main
irb 002> self.class
=> Object
```