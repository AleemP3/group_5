require_relative 'color_roulette'
require_relative 'heads_tails'
require_relative 'player'
require_relative 'wallet'

class Heads_tails
  def initialize 
    puts "select heads or tails"
    @coin = ["heads", "tails"
  ]
    @bets = [
      { name: "min", amount: 10 },
      { name: "max", amount: 25 }
    ]
    users_guess = gets.chomp
    if @coin.sample == users_guess
      puts "YOU WIN!"
      # add method from wallet
    else
      puts "you lose..."
      # lose method from wallet
    end

  end 

  def betting
    
  
  end

  end 
end 