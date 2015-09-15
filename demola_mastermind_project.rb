require_relative 'welcome_message'
class Computer

  def self.code_beginner
    colors = ['y', 'c', 'o', 'r']
    colors_rand = Random.new
    generated_code = []
    4.times{ generated_code << colors[rand(4)] }
    generated_code
  end
end

class GameEngine

  def play_calc_exact_partial
        start_time=Time.now
        generated_code = Computer.code_beginner

          10.times do |i|

          guess_one = (gets.chomp).split('')

            counter = 0
            counter_partial = 0
            check = generated_code.zip(guess_one)
              check.each do |i|
              if i[0] == i[1]
                  counter += 1
              else
                  if generated_code.include?i[1]
                      counter_partial += 1
                  end
              end
          end

    if counter == generated_code.length
             end_time=Time.now
             puts "CONGRATULATION! You guessed the sequence #{generated_code} in #{end_time-start_time}\n
Do you want to (p)lay again or (q)uit?"
break
WelcomeMessage.new.start_message
else
    puts "#{guess_one} has #{counter_partial} with #{counter} in the correct positions. You have taken #{i+1}"

        end
    end
    puts "You lost badly, SORRY! Do you want to try again? Enter (y) for Yes or any key for No\n"
    feedback = gets.chomp
    if feedback == "y"
      WelcomeMessage.new.start_message
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