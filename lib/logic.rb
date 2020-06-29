def logic(board)
   until over?(board) 
      update(board)
   end 
   if won?(board)
      winner(board) == "X" || winner(board) == "O" 
      puts "Congratulations #{winner(board)}!" 
   elsif draw?(board)
      puts "Game over" 
   end
end



def update(board)                       
  play                                    
  if valid_move?(board, index)
    move(board, index, current_player)
    display_board(board)                  
  end
end

