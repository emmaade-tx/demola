require_relative "demola_area.rb"
gem 'pry'
describe Square do
  before :each do
  @demola_area = Square.new(6)
end
describe '#new' do
  it "it takes one parameter and returns a Square object" do
    expect(@demola_area).to be_a Square
  end
end
describe "#area" do
  it "takes an area method and returns the square of what was initialized" do
    expect(@)
  end
end



require_relative "jeffs_array"
gem 'pry'

describe JeffsArray do
  before :each do
    @jeffs_array = JeffsArray.new([1,2,3,4,5,"a"])
  end

  describe "#new" do
    it "takes one parameters and returns a JeffsArray object" do
      expect(@jeffs_array).to be_a JeffsArray
    end
  end
  describe "#new_pop" do
    it "takes a new_pop method and returns the last item in the array" do
      last_item = @jeffs_array.new_pop

      expect(last_item).to eql("a")
    end

    it "takes a new_pop method and reduces the array size by 1" do
      @jeffs_array.new_pop

      expect(@jeffs_array.new_size).to eql(5)
    end
  end
end
