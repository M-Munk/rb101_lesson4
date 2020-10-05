# 1. Create an empty 'rows' array to contain all of the rows
# 2. Create a 'row' array and add it to the overall 'rows' array
# 3. repeat step 2 until we've created all the necessary rows 
#    1. all rows have been created when the length of the 'rows' array is equal to the input integer
# 4. Sum final row
# 5. return the sum of the final row

# If a step involves a lot of substeps, its a good idea to extract that and work on it separately



# *Problem: Create a Row*

# Rules:

# - Row is an array
# - Arrays contain integers
# - Integers are consecutive even numbers
# - Integers in each row form part of a larger overall sequence.
# - Rows are of different lengths
# - Input:  the information needed to create the output:
#   - The starting integer for the row
#   - The length of the row
# - Output: the row itself

# Examples: 

# start: 2, length: 1 [2]

# start: 4, length: 2 [4, 6]

# start: 8, length: 3 [8, 10, 12]

# Calculating start integer:
# Rule: first integer of row = last integer of preceding row + 2
# Algorithm:
#  - get the last row of the rows array
#  - get the last integer of that row
#  - add 2
#  

# Data Structures: 

# - an array of integers

# Algorithm: 

# 1. Create an empty 'row' array to contain the integers

# 2. Add the starting integer

# 3. increment the starting integer by 2 to get the next integer in the sequence

# 4. repeat steps 2 & 3 until the array has reached the correct length

# 5. return the array

# Implementation notes:
# start loop
#  - add the start integer to the row
#  - increment the start integer by 2
#  - break out of the loop if length of row = row_length

def sum_even_number_row(row_number)
  rows = []
  start_integer = 2
  (1..row_number).each do |current_row_number|
    rows << create_row(start_integer, current_row_number)
    start_integer = rows.last.last + 2 
  end
  rows.last.sum
end

def create_row(start_integer, row_length)
  row = []
  current_integer = start_integer
  loop do
    row << current_integer
    current_integer += 2
    break if row.length == row_length
  end
  row
end

# tests:
# main method:
# 2 -> 2
# 4, 6 -> 10
# 14, 16, 18, 20 -> 68

p sum_even_number_row(1) == 2 # true
p sum_even_number_row(2) == 10 # true
p sum_even_number_row(4) == 68 # true

# # helper method:
# start: 2, length: 1 [2]
# start: 4, length: 2 [4, 6]
# start: 8, length: 3 [8, 10, 12]

p create_row(2, 1) == [2] # true
p create_row(4, 2) == [4, 6] # true
p create_row(8, 3) == [8, 10, 12] # true

## Final Thoughts
#  don't think of PEDAC as a completely linear process
#  switch from implementation mode to abstract problem solving
#  when necessary
#  try to separate problem solving and coding ie
#  don't problem solve at the code level