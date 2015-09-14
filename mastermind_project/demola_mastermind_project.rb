class GameProcess
        def initialize
                @comp = Computer.new
                @player1 = Player1.new
                @player2 = Player2.new
        end
        def play_one
               10.times {|i| puts "You have tried #{i+1} time. You have #{10+i} attempt left/n Try again:"}
                   current_guess = @player_one.guess_code
                   checking = evaluate_guess(current_guess)
                   if checking[:exact].length == 4
                    puts "You won the game in time"
                    return
                  else
                    puts "You had #{checking[:exact].length} guess Matches and #{checking[:near].length} near matches"
              end

            puts "You lost!"
            return
          end

end



class Computer
  def initialize
    @code_combination = code
  end

  def code
    colors = ['B', 'G', 'Y', 'R']
    colors_rand = Random.new
    generated_code = []
    4.times{ generated_code << colors[rand(4)] }
    generated_code
  end
end

class Player1
  def guess_code_one
    puts "What is your guess?"
    converted_guess_one(gets.chomp)
  end

  def converted_guess_one(guess_two)
    guess.split('')
  end
end


class Player2
    def guess_code_two
    puts "What is your guess?"
    converted_guess_two(gets.chomp)
  end

  def converted_guess_two(guess_two)
    guess_two.split('')
  end
end
