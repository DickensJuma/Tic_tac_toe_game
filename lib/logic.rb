class Logic
  attr_accessor:player1, :player2,:board, :index, :player1, :player2
  def innitialize(player1,player2,board=Board.new)
    @player1=player1
    @player2=player2
    @board=board
    @board.display_board
  end

  def switch_players
    player1, player2 = player2, player1
  end

  def winning_comb
    [
      [@board[1], @board[2], @board[3]],
      [@board[4], @board[5], @board[6]],
      [@board[7], @board[8], @board[9]],
      [@board[1], @board[4], @board[7]],
      [@board[2], @board[5], @board[8]],
      [@board[3], @board[6], @board[9]],
      [@board[1], @board[5], @board[9]],
      [@board[3], @board[5], @board[7]]
    ]
  end

  def won(symbol)
     @board.winning_comb.each |check |
     return true if check.all?(symbol)
  end
  false
end

def full?
  if position_taken? && !won?

end

 def reset

end
end