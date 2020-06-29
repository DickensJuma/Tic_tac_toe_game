
def position_taken(board, index)
  if board[index] == "x" || board[index]=="o"
    return true
  end
end

def over?(board)
  if full?(board) && !won?(board) 
    return true
  end
end

def full?(board) 
board.all? do |n|
  n=="x" || n=="o"
end


def move(board,index,player)
  board[index]=player
end

winning_combination=[[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]]
def won
  board[index]== winning_combination
end

def winner
end

def current_player
  if turn_count %2 ==0
    "x"
  elsif
    "o"
end
end


def valid_move(index)
  index.between?(0..9)
end


def turn(board)
  result=0
  board.each do |n|
if n=="x" || n=="o"
 result +=1
  end
end

def turn_count
  count=0
  loop do 
count +=1
break if won || draw || over
  end
end
end



