require_relative 'color_roulette'
require_relative 'heads_tails'
require_relative 'player'
require_relative 'wallet'

require "colorize"

def separator
  puts
end

class Casino 
  def initialize
    @player_wallet = Wallet.new 
    separator
    puts "
    __       __)                                               )   ___                       /  
   (, )  |  /     /)                               /)         (__/_____)         ,          /   
      | /| /  _  // _  ______    _    _/_ ___  _/_(/    _       /       _   _     __   ___ /    
      |/ |/ _(/_(/_(__(_) // (__(/_   (__(_)   (__/ )__(/_     /       (_(_/_)__(_/ (_(_) o     
      /  |                                                    (______)                          
                                                                                                
   ".colorize(:light_yellow)
    separator
    main_menu
  end 

  def main_menu
    puts "-- Casino Menu --".colorize(:light_blue)
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
      puts "Thank You for Playing!"
      separator
      puts "
      .------.
      |K.--. |
      | :/\: |
      | (__) |
      | '--'K|
      `------' ".colorize(:red)
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