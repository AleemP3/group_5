require_relative 'color_roulette'
require_relative 'heads_tails'
require_relative 'player'
require_relative 'wallet'

def separator
  puts
end

class Casino 
  def initialize 
    separator
    puts "Welcome to our Casino"
    separator
    main_menu
  end 

  def main_menu
    puts "-- Casino Menu --"
    puts "1) Enter Your Information"
    puts "2) Play Roulette"
    puts "3) Play Heads or Tails"
    puts "4) View Wallet"
    puts "5) Exit Casino"

    choice = gets.to_i

    case choice
    when 1 
      player.new
    when 2   
      color_roulette
    when 3
      heads_tails
    when 4
      wallet
    when
      5
      exit(0)
    else
      separator
      puts "Invalid Selection"
      separator
      main_menu
    end
  end
end

Casino.new