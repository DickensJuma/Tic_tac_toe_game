
def position_taken(board, index)
  if board[index] == "x" || board[index]=="o"
    return true
  end
end

def over(board)
  if full(board) && !won(board)
    return true
  end
end

def full(board) 
board.all? do |n|
  n=="x" || n=="o"
end

def draw 
  if !won && full
    return true
  end
end


def move(board,index,player)
  board[index]=player
end


def won
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



