require_relative 'color_roulette'
require_relative 'main'
require_relative 'player'
require_relative 'wallet'

class Heads_tails
  def initialize 
    puts "Welcome to Heads and Tails!"
    
    @coin = ["heads", "tails"
      ]
    
    heads_tails 
  end 

def heads_tails
  puts "select heads or tails"
  users_guess = gets.strip 
  case users_guess 
  when "heads"
  if @coin.sample == users_guess
    puts "YOU WIN!"
    # add method from wallet
  else 
    puts "you lose..."
    # lose method from wallet
  end 
  play_again
  when "tails" 
  if @coin.sample == users_guess
    puts "YOU WIN!"
    # add method from wallet
  else 
    puts "you lose..."
    # lose method from wallet
  end 
  play_again
  else 
  puts "invalid option"
  end 
  
end

def play_again
  puts "would you like to play again? (y/n)"
  selection = gets.strip 
  case selection 
  when "y"
    heads_tails 
  when "n"
    exit
  else 
    puts "invalid option"
    play_again
  end 
end 


  # def betting
  #   puts "Please enter betting amount"
  #   user_amount = gets.to_i 
  #   if user_amount < @bets
  # end
  # end
end


Heads_tails.new