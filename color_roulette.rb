
class ColorRoulette 
  attr_accessor :player
  
    def initialize(player) 
       @player = player 
      ritmenu  
    end 

    def ritmenu 
      puts "Welcome to Roulette! You can bet on red or black. Please make a selection."
      ritcolor = gets.chomp
      @colorbets = ["red", "black"]
      betting 
      case ritcolor 
      when "red"
        if ritcolor == @colorbets.sample 
        puts "YOU WIN"
        @player.win(@bet)
        else 
          puts "you lose"
          @player.lose(@bet)
        end
        ritplayagain
      when "black"
         if @colorbets.sample == ritcolor 
        puts "YOU WIN"
        @player.win(@bet)
        else 
          puts "you lose"
          @player.lose(@bet)
        end
        ritplayagain
      else 
          puts "invalid option"
          ritplayagain
      end

    end 

    def ritplayagain
      puts "Would you like to play again? Y/N"
        ritpickagain = gets.strip
      case ritpickagain
       when "Y"
          ritmenu
       when "N"
        restart = Casino.new(@player) 
        restart.main_menu 
       else
        "Invalid selection, select Y/N"
        ritplayagain
       end
 
    end 
    def betting
      puts "You currently have #{@player.wallet.money}"
      puts "How much would you like to bet?"
      @bet = gets.to_i 
      if @bet > @player.wallet.money   
        puts "YOU BROKE BRO TRY AGAIN"
        betting 
      end 
      return @player.wallet.money 
      return @bet 
    end 
end 
