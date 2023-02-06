=begin
Wrrite a method that takes an array of consecutiveletters as input and return the missing letter
=end

# p determine_missing_letter(['a','b','c','d','f']) == 'E'

--------------Problem
Given an array of string consecutive letters find the letter that is missing in the sequence

input: Array of string elements (only 1 case)
Output: Return missing letter (string in opposite case)

Rules:
-Empty input array means we return an empty array
-Return opposite case represented in the given array

------------Modelling
['a','b','c','d','f']

-------------- Data structures
['a'...'z'] comparison alpha array?
comparison array that starts w the first letter of the given array and ends with the last letter of the give array
------------- Scratpad
Great Idea!
can use .swapcase
.empty? see if array is empty

------------ Algorithm

-Guard clause to check for an empty array
-if the array is empty, return an empty array

- Create a comparison array that starts with the first letter of the given array and ends with the last letter of the given array
  -creat a range with the first letter from the given array and ending on teh last letter
  -this range will start with the first element in teh array and end with the last element in the array and end with the last element in the array
  -convert this range into an array

-Iterate through the given array and check each letter against a comparison array (could add substep here)
-iterate through the comparison array and check each letter against a given array
-if a letter in the comparison array is not include in the given array, this is our missing letter
-return the missing letter in the swapped case
=end

def determine_missing_letter(arr)
return arr if arr.empty?

comparison = (arr.first..arr.last).to_a

comparison.each do |e|
return e.swapcase if !arr.include?(e) # ! flips boolean value so does not include
end
end

p determin_missing_letter(['a', 'b','c','d','f']) == 'E'

p determin_missing_letter(['o','q','r','s']) == 'P'
