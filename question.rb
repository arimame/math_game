class Question
   attr_reader :value1, :value2, :answer


  def initialize
    @value1 = 1 + rand(20)
    @value2 = 1 + rand(20)
    @answer = value1 + value2
  end
end

# question1 = Question.new
# puts "#{question1.value1} plus #{question1.value2} equals #{question1.answer}"
