require_relative 'more_test'
describe "let's use the #map method" do
  before :each do
    @mapper = Mapper.new
  end

  it "can return an array of lowercase names into capitalize names" do
    names = ["alice", "ben", "david", "gbenga"]

    expect(["Alice", "Ben", "David", "Gbenga"]).to eql(@mapper.capitalize_names(names))
  end

  it "can return an array of doubled numbers" do
    numbers = [1,2,3,4,5]

    expect([2,4,6,8,10]).to eql(@mapper.double_numbers(numbers))
  end

  it "can return an array of squared numbers" do
    numbers = [1,2,3,4,5]

    expect([1,4,9,16,25]).to eql(@mapper.square_numbers(numbers))
  end

  it "can return an array of name lengths" do
    names = ["alice", "ben", "david", "gbenga"]

    expect([5,3,5,6]).to eql(@mapper.calc_lengths(names))
  end
end
