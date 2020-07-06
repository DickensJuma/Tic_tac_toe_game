# class Player
#   attr_accessor :player
#   attr_accessor :symbol
#   def initialize(player,symbol)
#     @player = player
#     @symbol=symbol
#   end
# end

class Player
  attr_reader :player_name, :symbol
  def initialize(player_name, symbol)
    @player_name = player_name
    @symbol = symbol
  end
end