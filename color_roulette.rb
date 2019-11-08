require "pry"
# require_relative 'main'
# # require_relative 'heads_tails'
# require_relative 'player'
# require_relative 'wallet'

class Color_roulette
  # attr_accessor :colorbets
    def initialize 
      # @colorbets = ["red", "black"]
      ritmenu
    end 

    def ritmenu 
      @colorbets = ["red", "black"]
      puts "Welcome to Roulette! You can bet on red or black. Please make a selection."
      ritcolor = gets.chomp
      ritbetting
      case ritcolor 
      when "red"
        if ritcolor == @colorbets.sample 
        puts "YOU WIN"
        else 
          puts "you lose"
        end
        ritplayagain
      when "black"
         if @colorbets.sample == ritcolor 
        puts "YOU WIN"
        else 
          puts "you lose"
        end
        ritplayagain
      else 
          puts "invalid option"
          ritplayagain
      end

    end 

    def ritbetting
      puts "How much would you like to bet?"
      ritbetamt = gets.to_i
    end

    def ritplayagain
      puts "Would you like to play again? Y/N"
        ritpickagain = gets.strip
      case ritpickagain
       when "Y"
          ritmenu
       when "N"
          exit
       else
        "Invalid selection, select Y/N"
        ritplayagain
       end

    end 
end 
Color_roulette.new 