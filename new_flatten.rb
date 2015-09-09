class Array
  def new_flatten
    a = []
    self.each do |element|
      if element.is_a? Array
        a += element.new_flatten
      else
        a << element
      end
    end
    a
  end
end
test_array = [1,2,3,[4,5,6,[7]]]
print test_array.new_flatten
