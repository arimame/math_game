class Round
  def initialize (players)
    @asker = player[0]
    @answerer = player[1]
  end

  def create_question
    Question.new
  end





