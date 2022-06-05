class Question
  #initializer
  def initialize
    @number1 = rand(1..50)
    @number2 = rand(1..50)
    @answer = @number1 + @number2
  end

  def ask(name)
    puts "#{name}: What does #{@number1} plus #{@number2} equal to?"
  end

  def validate?(input) #checks if answer matches userinput
    @answer == input
  end

end
