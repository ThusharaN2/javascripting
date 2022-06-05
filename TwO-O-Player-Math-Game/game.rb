require './player'
require './question'
class Game

  #initializer
  def initialize(name)
    @name = name
    @player_1 = Player.new("Sara")
    @player_2 = Player.new("Ava")
  end

  #runs before starting the game
  def welcome
    puts """Welcome to the TwO-O Player MathGame!
     Hello #{@player_1.name} and #{@player_2.name}
     Ready to play ?
     """ #Typing b/w """ """ makes it print multi-line
    next_turn #method at bottom 
  end

  def winner(player)
    puts "#{player.name} wins with the score of #{player.lives}/3"
    puts ('---------GAME-OVER--------')
    puts 'Good game!'
    exit(0)
  end

  def check_score #checks score to declare winner
    if @player_1.is_dead
      winner(@player_2)
    elsif @player_2.is_dead
      winner(@player_1)
    end
  end

  def show_stats #after every turn-1/person
    puts "#{@player_1.name}: #{@player_1.lives}/3   vs   #{@player_2.name}: #{@player_2.lives}/3"
  end

  def next_turn #method to make sure it keeps going & calls everything every time
    @player_1.new_question #asks q
    check_score #calculates score
    @player_2.new_question #2nd player
    check_score
    show_stats #after both play
    puts ('---------NEW-TURN---------')
    next_turn #restarts turn 
  end
end