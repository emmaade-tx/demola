class GameProcess
        def initialize
                @comp = Computer.new
                @player1 = Player1.new
                @player2 = Player2.new
        end
        def play_one
               10.times {|i| puts "You have tried #{i+1} time. You have #{10+i} attempt left/n Try again:"}
                   current_guess = @player_one.guess_code
                   checking = calculate_guess(current_guess)
                   if checking[:exact].length == 4
                    puts "You won the game in time"
                    return
                  else
                    puts "You had #{checking[:exact].length} guess Matches and #{checking[:partial].length} near matches"
              end

            puts "You lost!"
            return
          end

          def calculate_guess(current_guess)
            results = { :exact => [], :partial => [] }
            current_guess.each_with_index do |choice, position|
              if exact_match?(choice, position)
                results[:exact] << true
              elsif partial_match?(choice)
                results[:partial] << true
              end
            end
            results
          end


end



class Computer
  def initialize
    @code_combination = code
  end

  def code_beginner
    colors = ['B', 'G', 'Y', 'R']
    colors_rand = Random.new
    generated_code = []
    4.times{ generated_code << colors[rand(4)] }
    generated_code
  end
end

class player_one
  def guess_code_one
    puts "What is your guess?"
    converted_guess_one = gets.chomp
    converted_guess_one.split('')
    return GameProcess.play_one
  end
end


class Player_two
  def guess_code_one
    puts "What is your guess?"
    converted_guess_two = gets.chomp
    converted_guess_two.split('')
    return GameProcess.play_two
  end
end
