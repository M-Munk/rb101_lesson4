ages = { "Herman" => 32, 
         "Lily" => 30, 
         "Grandpa" => 5843, 
         "Eddie" => 10, 
         "Marilyn" => 22, 
         "Spot" => 237 }

# pick out the minimum age from current family hash
min_age = ages.values.min
p min_age
# find youngest:
youngest = ages.select do |name, age|
  age == min_age
end
p youngest

