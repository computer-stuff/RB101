NOTES:

Now, let's suppose that the above flowchart is mapping out a solution to part of a larger problem.
Let's suppose that in our larger problem, we're asking the user to give us N collections of numbers.
We want to take the largest number out of each collection, and display it.

High Level Pseudo-Code:

while user wants to keep going

- ask the user for a collection of numbers
- extract the largest one from that collection and save it
- ask the user if they want to input another collection

return saved list of numbers

The sub-process of "- extract the largest one from that collection and save it"
can be turned into a method,

If we weren't able to see that first we would start from the full pseudo-code

while user wants to keep going

- ask the user for a collection of numbers
- iterate through the collection one by one.

  - save the first value as the starting value.
  - for each iteration, compare the saved value with the current value.
  - if the saved value is greater, or it's the same
    - move to the next value in the collection
  - otherwise, if the current value is greater
    - reassign the saved value as the current value

- after iterating through the collection, save the largest value into the list.
- ask the user if they want to input another collection

return saved list of numbers

When pseudo-code is long it becomes hard to trust the accuracy of the logic.
Because of this it's logical to extract grouping into sub-process and tackle the various pieces separately.

By taking the shortened pseudo-code we can translate that to formal pseudo-code.

START

SET large_numbers = []
SET keep_going = true

WHILE keep_going == true
GET "enter a collection"
SET collection
SET largest_number = SUBPROCESS "extract the largest one from that collection"
large_numbers.push(largest_number)
GET "enter another collection?"
IF "yes"
keep_going = true
ELSE
keep_going = false
IF keep_going == false
exit the loop

PRINT large_numbers

END
