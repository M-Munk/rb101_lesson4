flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
# Find the index of the first name that starts with "Be" => 3
p flintstones.index {|name| name.start_with?('Be')}