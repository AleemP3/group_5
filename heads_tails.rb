class HeadsTails
  attr_accessor :player 

  def initialize(player)
    @player = player 
    heads_tails 
  end 

  def heads_tails
    puts "Welcome to Heads and Tails!"
      @coin = ["heads", "tails"
      ]
    puts "select heads or tails"
    users_guess = gets.strip 
    betting 
      case users_guess 
        when "heads"
          if @coin.sample == users_guess
          puts "YOU WIN!"
          @player.win(@bet)
          else 
          puts "you lose..."
          @player.lose(@bet)
          end 
        play_again
        when "tails" 
          if @coin.sample == users_guess
          puts "YOU WIN!"
          @player.win(@bet)
          else 
          puts "you lose..."
          @player.lose(@bet)
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
    restart = Casino.new(@player) 
    restart.main_menu 
  else 
    puts "invalid option"
    play_again
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
    return @player
    return @bet 
  end 

end


