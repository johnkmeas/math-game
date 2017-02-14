class MathGame

  attr_accessor :player_1, :player_2, :random_number, :current_player

  def initialize(player1, player2)
    @player_1 = player1
    @player_2 = player2
  end

  def players
    puts "Get Ready to Math it out\n #{player_1[0]} vs #{player_2[0]}"
  end

  def game_start

    if rand(0..1).to_i == 0
      current_player = player_1
    else
      current_player = player_2
    end

    until (player_1[1] == 0) || (player_2[1] == 0) do
      current_player == player_1 ? current_player = player_2 : current_player = player_1
      puts "\n#{current_player[0]}'s turn :"
      puts "#{math_question}"
      a = gets.chomp
      sleep(0.6)
      if a.to_i == @random_number
        puts "Correct! You answered #{random_number}"
      else
        puts "Sorry that's Wrong! The answer is #{random_number}"
        current_player[1] -= 1
        puts "#{current_player[0]} has #{current_player[1]} lives left"
      end
      sleep(0.6)
    end
    sleep(0.8)
    if player_1[1] > player_2[1]
      puts "\n#{player_1[0]} Wins! and #{player_2[0]} Sucks!"
    else
      puts "\n#{player_2[0]} Wins! and #{player_1[0]} Sucks!"
    end
    sleep(1)
  end

  def math_question
    @random_number = rand(10..100).to_i
    second_num = random_number - rand(10..20).to_i
    first_num = random_number - second_num

    puts "What is #{first_num} + #{second_num}?"
  end

end
