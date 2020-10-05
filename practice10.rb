munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

# modify the hash such that each memeber of the Munster family has an additional
# "age_group" key that has one of three values describing the age group the family
# memeber is in (kid, adult, or senior)

# Note: a kid is in the age range 0 - 17, an adult is in the range 18 - 64 
# and a senior is aged 65+.

# try using a case statement along with Ruby Range objects in your solution

# input: hash
# output: modified hash
# iterate over hash keys
# determine which range the individual's age falls under
# add appropriate age_group to the values hash

def add_age_range(hash)
  hash.each do |_, value|
    case value["age"]
    when (0..17)
      value["age_group"] = "kid"
    when (18..64)
      value["age_group"] = "adult"
    else
      value["age_group"] = "senior"
    end
  end
end

add_age_range(munsters)
p munsters