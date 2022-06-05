class Player
  
  attr_reader :name, :lives

  def initialize(name) #starts with 3 lives
    @name = name
    @lives = 3
  end

  def lose_life 
    @lives -= 1
  end

  def is_dead #game over 
    @lives == 0
  end

  def new_question
    new_question = Question.new
    new_question.ask(name)
    print '> '
    @userchoice = $stdin.gets.chomp
    if new_question.validate?(@userchoice.to_i)
      puts 'Yes! You are correct! :)'
    else
      puts 'Wrong answer :('
      lose_life #loses life if question wrong
    end
  end
end