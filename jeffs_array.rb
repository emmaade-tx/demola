class JeffsArray
  def initialize(jeffs_arr)
    @jeffs_arr = jeffs_arr
  end
  def new_pop
    last_arr = @jeffs_arr.last
    @jeffs_arr.delete_at(@jeffs_arr.length-1)
    last_arr
  end
  def new_size
    @jeffs_arr.length
  end
end
puts JeffsArray.new([1,2,3,4,5,'a'])
