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

  def position_taken?(board, index)                 
    if board[index] == "X" || board[index]=="O"
    return true
    end                                           
  end

  def move(index,player)
    board[index]=player.sym                  
  end

   def valid_move?(index)
     index.between?(0..9)                      
   end
   def turn_count
     count=0                                         
     loop do                                           
      count +=1
      break
       if won || draw || over
       end
      end
    end

  def update_count(board)
   counter = 0
   board.each do |n|                                  
    if n == "x" || n == "o"
         counter += 1
      end
   end
   counter
  end

def turn(board)                                   
  result=0
   board.each do |n|                                 
    if n=="x" || n=="o"                               
      result +=1                                    
    end
   end     
end          

  def current_player(board)                        
    update_counter(board) % 2 == 0 ? "x" : "o"     
  end

end 
