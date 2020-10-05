words = "the flintstones rock"
# capitalize the first letter of each word

def titleize(string)
  arr = string.split
  arr.map! { |word| word.capitalize}
  arr.join(" ")
end

p titleize(words)