def double_odd_index(numbers)
  counter = 0
  new_numbers = []
  while counter < numbers.size
    if counter.odd?
      new_numbers << 2 * numbers[counter]
    else
      new_numbers << numbers[counter]
    end
    counter += 1
  end
  new_numbers
end

my_numbers = [1, 4, 3, 7, 2, 6]
p double_odd_index(my_numbers) #=> [1, 8, 3, 14, 2, 12]