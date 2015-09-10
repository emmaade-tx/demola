class Binary_search
    def initialize(arr, target)
        @arr = arr
        @target = target
        @min = 0
        @max = @arr.length - 1
        #binding.pry
    end
    def my_find
        #in your find method create a loop that will run as long as min <= max
        #also break out of the array if array[mid] == target
        while @min <= @max
          @mid = @min + ((@max - @min)/2)
          if @arr[@mid] == @target
            return @mid
          elsif @arr[@mid] < @target
            @min = @mid + 1
          else
            @max = @mid - 1
          end
          #binding.pry
        end
        return -1
      end
end
a = Binary_search.new([1,5,3,8,5,21,3].sort, 5)
p a.my_find
