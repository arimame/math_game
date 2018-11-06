class Player
  attr_reader :name, :lives

  def initialize(name)
    @name = name
    @lives = 3
  end

  def lose_life
    @lives -= 1
  end
end


  # player1 = Player.new("Player 1")
  # puts player1.name
  # player1.lose_life
  # puts player1.lives