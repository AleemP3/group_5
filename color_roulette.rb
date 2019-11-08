binding.pry

require_relative 'color_roulette'
require_relative 'heads_tails'
require_relative 'player'
require_relative 'wallet'

class Color_roulette
    def initialize 
      colorbets = []
    end 

    def ritmenu 
      puts "Welcome to Roulette! You can bet on red or black. Please make a selection."
      puts "1) Red"
      puts "2) Black"
      ritcolor = gets.to_i
      case ritcolor
      when 1
        @colorbets.push(color)
      when 2
        @colorbets.push(color)
        binding.pry
      else
        puts "Invalid selection"
        ritmenu
      end
      puts "Place your bet!"
      
    end 

    def ritrand

    end 
end 