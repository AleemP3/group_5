class Player 
  attr_accessor :name, :wallet, :bet, :money 
  def initialize(name)
    @name = name 
    @wallet = Wallet.new 
  end 

  def win(bet)
    #binding.pry 
    @wallet.add(bet)
    puts "You now have... #{@wallet.money}"
  end 

  def lose(bet) 
    @wallet.minus(bet)
    puts "You now have... #{@wallet.money}"
  end
  def view_wallet
    puts "You currently have #{@wallet.money}"
  end
end 