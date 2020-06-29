class Board
  attr_writer :current_player
  attr_writer :move
  def initialize 
    @board = [1,2,3,4,5,6,7,8,9]
  end

  def display_board
  puts " #{@board[0]} | #{@board[1]} | #{@board[2]}"
  puts "--------"
  puts " #{@board[3]} | #{@board[4]} | #{@board[5]}"
  puts "--------"
  puts " #{@board[6]} | #{@board[7]} | #{@board[8]}"
  end

  def updated_board(current_player,move)
  i = 0
  for i in @board
  if @board[i] == move
    @board[i] = current_player
    current_player << @board
  end
  end
end
end
