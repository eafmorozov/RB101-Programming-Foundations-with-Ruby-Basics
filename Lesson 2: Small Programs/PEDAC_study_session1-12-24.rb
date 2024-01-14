=begin
Sum of Numbers
Implement a method that calculates the sum of numbers inside of a string.
Example: "L12aun3ch Sch3oo45l" should output 63.

You can expect that the string will include only positive numbers.

P
- Input: String containing numbers as well as other characters
- Output: Integer, representing the sum of the numbers found in the input string

R
- Only positive numbers will be included
- Consecutive digits represent numbers

D
- Array to break up strings into characters and store consecutive numbers
- Array of digits

A
- 
- Eric's strategy
  - Use a range (0 to infinity) to see if a number is found in there
  - Use a variable to accumulate sum of numbers found

- Elise's strategy
  - Examine each character in a string and see if it is in 0-9
  - Iterate through the string, when numbers are found surrounded by non-numbers, extract the number. Look at what comes before and what comes after each digit.
  - Creating temporary variables to store information while iterating over the input string

MAIN 

Define the constant array of DIGITS as equal to digits 0 through 9
Define method Sum_of_Numbers that takes a parameter String_Input
initialize a counter_variable and set it equal to 0
initialize a temporary array string that will hold numbers


Begin to iterate through the string 
  if the string at index of the counter_variable is a digit and the index is zero, then add the digit to the temporary array
  elsif the string is a digit then 
    add it to the temporary counter and check to see if the string value of index -1 is also a digit
    if it is then 
    check to see if the add it to the temporary array







iterate over the input string
if the character is an integer then put it into an array
else, skip over it
for 
=end
# Test Cases
puts sumOfNumbers("HE2LL3O W1OR5LD") === 11;
puts sumOfNumbers("L12aun3ch Sch3oo45l") === 63;



