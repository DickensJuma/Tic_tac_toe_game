class Board

  attr_accessor :board
  def initialize 
    @board = [1,2,3,4,5,6,7,8,9]
  end

  def display_board
  "   #{@board[0]} | #{@board[1]} | #{@board[2]}
   ----------
   #{@board[3]} | #{@board[4]} | #{@board[5]}
  ----------
   #{@board[6]} | #{@board[7]} | #{@board[8]}"
  end

  def move(index,player)
    @board[index]=player.sym                  
  end

  def position_taken?(board, index)                 
    if board[index] == "X" || board[index]=="O"
    return true
    end                                           
  end

   def in_range?(index)
     index.between?(0..9)                      
   end

   def valid_move?(index)
    in_range?(index) && !position_taken?(index)                
  end
end 
