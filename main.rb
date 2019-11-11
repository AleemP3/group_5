require "pry"
require_relative 'color_roulette'
require_relative 'player'
require_relative 'heads_tails'
require "colorize"

def separator
  puts
end

class Wallet 
  attr_accessor :wallet, :money, :player 
  def initialize
    puts "Enter amount to start" 
    @money = gets.to_i 
    @wallet = wallet 
    @wallet == @money 
    @player = player 
  end

  def add(bet)
    self.money += bet 
  end 

  def minus(bet) 
    self.money -= bet
  end
end 

class Casino 
  attr_accessor :player 
  def initialize(player)
    @player = player 
    separator
    puts "
    __       __)                                               )   ___                       /  
   (, )  |  /     /)                               /)         (__/_____)         ,          /   
      | /| /  _  // _  ______    _    _/_ ___  _/_(/    _       /       _   _     __   ___ /    
      |/ |/ _(/_(/_(__(_) // (__(/_   (__(_)   (__/ )__(/_     /       (_(_/_)__(_/ (_(_) o     
      /  |                                                    (______)                          
                                                                                                
   ".colorize(:light_yellow)
    separator 
  end 

  def start_game
    puts "Please enter your name: "
    new_user = gets.strip
    @player = Player.new(new_user) 
    puts "Welcome new player #{new_user}"
    main_menu
  end 

  def main_menu
    puts "-- Casino Menu --".colorize(:light_blue)
    #puts "1) Enter Your Information"
    puts "1) Play Roulette"
    puts "2) Play Heads or Tails"
    puts "3) View Wallet"
    puts "4) Exit Casino"

    choice = gets.to_i

    case choice
    # when 1 
    #   main_menu
    when 1   
      ColorRoulette.new(@player)
    when 2
      HeadsTails.new(@player)  
    when 3 
      @player.view_wallet 
      main_menu
    when
      4
      puts "Thank You for Playing!"
      separator
      puts "
      .------..------..------..------..------..------..------.
      |G.--. ||O.--. ||O.--. ||D.--. ||B.--. ||Y.--. ||E.--. |
      | ://: || :(): || :(): || ://: || :(): || ://: || (//) |
      | ://: || :(): || :(): || (__) || ()() || (//) || ://: |
      | '--'G|| '--'O|| '--'O|| '--'D|| '--'B|| '--'Y|| '--'E|
      `------'`------'`------'`------'`------'`------'`------'
      ".colorize(:red)
      exit(0)
    else
      separator
      puts "Invalid Selection"
      separator
      main_menu
    end
  end
end 

menu = Casino.new(@player) 
menu.start_game 

