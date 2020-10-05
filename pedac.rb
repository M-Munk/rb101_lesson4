# PROBLEM:

# Given a string, write a method change_me which returns the same
# string but with all the words in it that are palindromes uppercased.

# change_me("We will meet at noon") == "We will meet at NOON"
# change_me("No palindromes here") == "No palindromes here"
# change_me("") == ""
# change_me("I LOVE my mom and dad equally") == "I LOVE my MOM and DAD equally"

=begin
  input: string
  output: string (not the same object)
  Explicit requirements:
   - every palindrome in the string must be converted to uppercase (a palindrom is a word that
  reads the same forwards and backwards)
   - Palindromes are case sensitive ("Dad" is not a palindrome, "dad" is)
  Implicit requirements:
   - The returned string should not be the same string object
   - If the string is an empty string, the result should be an empty string

  
=end

# PROBLEM:

# Given a string, write a method `palindrome_substrings` which returns
# all the substrings from a given string which are palindromes. Consider
# palindrome words case sensitive.

# Test cases:

# palindrome_substrings("supercalifragilisticexpialidocious") == ["ili"]
# palindrome_substrings("abcddcbA") == ["bcddcb", "cddc", "dd"]
# palindrome_substrings("palindrome") == []
# palindrome_substrings("") == []

=begin
 input: string
 output: array of substrings
 Explicit requirements:
   - every palindrome in the string must be returned in an array of substrings
   - empty string returns an empty array
   - if no palindromes are found, returns an empty array
  Implicit requirements:
    
  Questions: 
    - What is a substring?
    - What 
=end

# Algorithm:
#  - initialize a result variable to an empty array
#  - create an array named substring_arr that contains all of the
#    substrings of the input string that are at least 2 characters long.
#  - loop through the words in the substring_arr array.
#  - if the word is a palindrome, append it to the result
#    array
#  - return the result array