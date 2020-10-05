numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.shift(1)
end

# what is the output:
# 1
# 3
# => [3, 4]
# wierd stuff happens
# 1 is printed and then shifted out, on the next iteration we're on index 1 of [2, 3, 4]
# so 3 is printed and then 2 is shifted out.  The next iteration we're on index 2 of [3, 4]
# which doesn't exist.  [3, 4] is what is left of the original array and is what is returned

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.pop(1)
end

# what is the output:
# 1 is printed, and then 4 is shifted out, [1, 2, 3]
# 2 is printed and then 3 is shifted out [1, 2]
# now on index 3 which doesn't exist so [1, 2] is what is left of the original array
# and is what is returned
# 1
# 2
# => [1, 2]
# irb(main):011:0> 


