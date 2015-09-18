require_relative 'starting.rb'
require_relative 'demola_mastermind_project'
RSpec.describe "Menu" do
  it "can call welcome_message.rb to triger the game" do
  expect(Menu.new.options).to eq (WelcomeMessage.new.introduction_message)
end
end
  describe "WelcomeMessage" do
    it "should contain all the methods for intoductory messages" do
      expect(WelcomeMessage.new.introduction_message).to eq ()
      expect(WelcomeMessage.start_message).to eq ()
    end
  end
  describe "GameEngine" do
  it "has the same position with the guess code" do
     GameEngine.play_calc_exact_partial generated_code(["y","r","b","b"])
     GameEngine.play_calc_exact_partial guess_one(["y","b","b","r"])
    expect(GameEngine.play_calc_exact_partial partial_match).to eq [3]
    expect(GameEngine.play_calc_exact_partial exact_match).to eq [1]
  end
end
