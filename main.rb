require "./Player"
require "./Question"
require "./Game"



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




