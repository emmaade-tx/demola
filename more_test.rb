class Mapper
  def capitalize_names(names)
    names.map {|i| i.capitalize}
  end
  def double_numbers(numbers)
    numbers.map {|i| i + i }
  end
  def square_numbers(numbers)
    numbers.map {|i| i * i}
  end
  def calc_lengths(names)
    names.map {|i| i.length}
  end
end
