require_relative 'color_roulette'
require_relative 'heads_tails'
require_relative 'player'
require_relative 'main'

class Wallet 
  def initialize
    @betting = Heads_tails.new 
    @wallet = [] 
    puts "How much money do you want to start with: "
      money = gets.to_i 
      @wallet << money 
  end 

  def add_heads_tails
    @wallet.last - 
  end 

  def minus_heads_tails

  end 
end 