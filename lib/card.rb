require 'pry'

class Card
attr_reader :question, :answer

  def initialize(question, answer)
    @question = question
    @answer = answer
  end

end


# binding.pry
"____"