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
