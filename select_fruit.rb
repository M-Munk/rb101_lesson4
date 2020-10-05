def select_fruit(hsh)
  selection = {}
  hsh.each do |key, value|
    if value == 'Fruit'
      selection[key] = value
    end
  end
  selection
end

produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

p select_fruit(produce) # => {"apple"=>"Fruit", "pear"=>"Fruit"}