
class Player
  attr_accessor :player_name, :lives
  def initialize(palyer_name)

    @player_name = player_name
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

  # to add logic for the game


end






