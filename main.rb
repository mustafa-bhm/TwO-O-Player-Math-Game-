
class Player
  attr_accessor :name, :lives
  def initialize(name)

    @name = name
    @lives = 3
  end

end

class Question
 attr_accessor :question, :answer

 def initialize
  num1 = rand(1...10)
  num2 = rand(1...10)

  @question = "What does #{num1} + #{num2} equal ? "
  @answer = num1 + num2
 end

end


class Game


  def getLives (player1 , player2)

    if player1.lives > 0 && player2.lives > 0
      puts "P1 : #{player1.lives}/3 VS P2: #{player2.lives}/3 "
    elsif player1.lives <= 0
      puts " #{player2.name} wins with a score of #{player2.lives} "
    elsif player2.lives <= 0
      puts " #{player1.name} wins with a score of #{player1.lives} "
    end
  end

  def newGame(player, q)
    puts "----- NEW TURN -----"
    puts "#{player.name}: #{q.question}"
    input = gets.chomp.to_i
    if  input == q.answer
      puts "#{player.name}: YES! You are correct! "
    else
      puts "#{player.name}: Seriously ? No ! "
      player.lives -= 1
    end
  end
  def changePlayer(current, player1, player2)
    if current == player2
      current = player1
    else
      current = player2
    end
      current
  end


end

p1 = Player.new("Player 1")
p2 = Player.new("Player 2")
game = Game.new()
current_player = p2

while p1.lives > 0 && p2.lives > 0
  current_player = game.changePlayer(current_player, p1, p2)
  q = Question.new()
  game.newGame(current_player, q)
  game.getLives(p1, p2)

end

puts " ====== Game Over ======"
puts "Good bye !"




