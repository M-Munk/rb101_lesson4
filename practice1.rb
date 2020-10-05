flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
# turn this array into a hash where the names are the keys and the values are the positions
# in the array
family = {}
flintstones.each_with_index do |name, index|
  family[name] = index
end
p family