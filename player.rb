require_relative 'color_roulette'
require_relative 'heads_tails'
require_relative 'player'
require_relative 'wallet'

class Player 
  attr_accessor :player1 
  def initialize
    puts "Enter your name: "
    player1 = gets.strip 
    puts "Hello #{player1}"
  end 
end 