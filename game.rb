class Game
  def initialize
    @players = [
      Player.new("Player 1"),
      Player.new("Player 2")]
    @gameover = false
    @current_player = @players[0]
  end

  def play
    while (not @gameover) do
      sleep 1
      puts "P1: #{@players[0].lives}/3 || P2: #{@players[1].lives}/3  "
      sleep 1
      puts "--------New Turn--------"
      question = Question.new

      puts "#{@current_player.name}: What is #{question.value1} plus #{question.value2}?"
      answer = gets.chomp.to_i
      if answer == question.answer
        puts "That's right!"
      else
        @current_player.lose_life
        self.set_gameover
        puts "That's wrong. #{@current_player.name} now only has #{@current_player.lives} lives"
      end
        if @current_player == @players[0]
          @current_player = @players[1]
        else
          @current_player = @players[0]
        end
    end
     puts "GAMEOVER!! #{@current_player.name} wins!"
  end

  def set_gameover
    if @current_player.lives == 0
      @gameover = true
    end

  end
end

