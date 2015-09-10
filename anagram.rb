require 'pry'
class Anagram
  def initialize(item)
    @item = item
    @new_array = []
    return @item
  end
  binding.pry
  def matches(*arguments)
     @new_array = arguments.select {|a| anagram(a, @item)}
     return @new_array
  binding.pry
  end
  def anagram(word, anagram)
    if(word.downcase != anagram.downcase)
      new_word = word.downcase.split("").sort
      new_anagram = anagram.downcase.split("").sort
      new_word == new_anagram ? true : false
  binding.pry
    else
      return false
      binding.pry
    end
  end
end
