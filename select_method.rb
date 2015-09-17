class Selector
  attr_reader :selector
def even_select(numbers)
  numbers.find_all {|i| i % 2 == 0}
end

def odd_select(numbers)
  numbers.reject {|i| i % 2 == 0}
end

def three_letter_select(words)
  words.select {|i| i.length ==3}
end

def greater_than_three(words)
  words.select {|i| i.length > 3}
end

def end_with_ing(words)
  words.select {|i| i[-3..-1] == "ing"}
end

def pick_floats(numbers)
  numbers.select {|i| i.class == Float}
end

end
