class Logic
  attr_accessor:player1, :player2,:board, :index
  def innitialize(player1,player2,board=Board.new)
    @player1=player1
    @player2=player2
    @board=board
    @board.display_board
  end

  def current_player
    board.turn_count.odd? ? player1 : player2
  end

   def full?
    @board.full? && !won? ? true : false
   end

  def play
    turn until over?
    if won?
      "Congratulations #{winner}!" 
    elsif draw?
       "Game over" 
    end
  end


end
