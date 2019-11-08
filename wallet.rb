require_relative 'color_roulette'
require_relative 'heads_tails'
require_relative 'player'
require_relative 'wallet'

class Wallet 
  def initialize
    @wallet = [] 
    puts "How much money do you want to start with: "
      money = gets.to_i 
      @wallet << money 
  end 

  def add

  end 

  def minus 

  end 
end 