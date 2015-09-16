require_relative 'welcome_message'
require 'colorize'
class Computer

  def self.code_beginner
    colors = ['y', 'c', 'b', 'r']
    colors_rand = Random.new
    generated_code = []
    4.times{ generated_code << colors[rand(4)] }
    generated_code
  end
  def self.code_intermediate
    colors = ['y', 'c', 'b', 'g', 'r']
    colors_rand = Random.new
    generated_code = []
    5.times{ generated_code << colors[rand(5)] }
    generated_code
  end
  def self.code_advance
    colors = ['y', 'c', 'b', 'g', 'w', 'r']
    colors_rand = Random.new
    generated_code = []
    6.times{ generated_code << colors[rand(6)] }
    generated_code
  end
end
class Difficulty

  def self.code_level level
    if level == "1"
    generated_code = Computer.code_beginner

  elsif level == "2"
    generated_code = Computer.code_intermediate
  else
    generated_code = Computer.code_advance
  end
end
end
class GameEngine

  def play_calc_exact_partial level
        start_time=Time.now
        generated_code = Difficulty.code_level level

          10.times do |i|

          guess_one = (gets.chomp).split('')
            exact_match = 0
            partial_near = 0
            check = generated_code.zip(guess_one)
              check.each do |i|
              if i[0] == i[1]
                  exact_match += 1
              else
                  if generated_code.include?i[1]
                      partial_near += 1
                  end
              end
          end

    if exact_match == generated_code.length
             end_time=Time.now
             puts "CONGRATULATION!".blue + " You guessed the sequence #{generated_code} in #{end_time-start_time}"

             puts "Do you want to " + "(p)lay again" + " or" + "(q)uit?".red
             feedback_one = gets.chomp
             if feedback_one == "p"
               WelcomeMessage.new.introduction_message
             else
              system(exit)
             end
break
else
    puts "#{guess_one}".cyan + " has" + "#{partial_near}".red + " partial match with" + "#{exact_match}".blue + "
    exact match in the correct positions. You have taken" + "#{i+1}".cyan

        end
    end
    puts "You lost badly," + "SORRY!".red + " Do you want to" + "Try again?".cyan + "Enter" + "(y)".blue + " for" + " Yes".blue + " or any key for" + "No\n".red
    feedback = gets.chomp
    if feedback == "y"
      WelcomeMessage.new.introduction_message
   else
     system(exit)
   end
end
end
class Player_one
  def guess_code_one
    puts "What is your guess?"
    guess_one = gets.chomp
    return GameProcess.play_one
  end
end


class Player_two
  def guess_code_one
    puts "What is your guess?"
    guess_two = gets.chomp
    return GameProcess.play_two
  end
end
