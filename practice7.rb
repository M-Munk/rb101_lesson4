statement = "The Flintstones Rock"
# create a hash that expresses the frequency with which each letter occurs in the string
# assume string contains spaces but no numbers based on statement variable given
# input => string
# output => hash

def count_letters(string)
  letter_frequency = Hash.new(0)
  arr = string.split("")
  arr.reject! {|letter| letter == " "}
  arr.each { |letter| letter_frequency[letter] += 1 }
  letter_frequency
end

p count_letters(statement)