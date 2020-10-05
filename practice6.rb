flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
# ammend the array so that all the names are shortened to just the first three characters

flintstones.map! do |name|
  name[0, 3]
end

p flintstones