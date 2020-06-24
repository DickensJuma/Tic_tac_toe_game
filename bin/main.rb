#!/usr/bin/env ruby
# frozen_string_literal: true

puts " Welcome to Tic Tac Toe"
puts "Please player one give us your name:"
player1 = gets.chomp
puts "Please player two give us your name:"
player2 = gets.chomp
puts "Please #{player1} choose between x or o"
selection = gets.chomp.to_s

board_arr=[" "," "," "," "," "," ",," "," "," "]
def board(board_arr)
    puts "#{board_arr[0]}|#{board_arr[1]}|#{board_arr[2]}"
    puts "--------------"
    puts "#{board_arr[3]}|#{board_arr[4]}|#{board_arr[5]}"
    put
    "--------------"
    puts "#{board_arr[6]}|#{board_arr[7]}|#{board_arr[8]}"
end
if selection == "x"
puts "#{player1}, you are #{selection} for this game"
puts "#{player2}, you are o for this game"
board
elsif selection == "o"
puts "#{player1}, you are #{selection} for this game"
puts "#{player2}, you are x for this game"
board
else

end


def move(board_arr, arg,current_ player)
  board[arg]=current_player

end

def count
  result=0
  board_arr.each do |n|
    if n=="x" || n=="o"
      result = result+1
    end
  end
  result
end
def current_player
if count(board_arr) ℅ 2==0
  puts "x"
elsif
  puts "o"
end
end

end
def valid(arg)
  if arg.between(1..9) 
    return true
  else
    return false
end
def over(board_arr)
  if full(board_arr) || won(board_arr) || draw(board_arr)
    return true
    puts "game over"
  end

 end

  def board_full(board_arr)
    board_arr.all? do |n|
      n=="x" || n=="o"
  end
  end

def won
  board(board_arr)==board(win_combination)
end

def draw
  if !won && full
    return true
  elsif
    return false
end

def winner
if won(board_arr)
  return won(board[0])

end

win_combinations=[[1,2,3],[4,5,6],[7,8,9],[1,5,9],[3,5,7],[1,4,7],[2,5,8],[3,6,9]]
  
def turn(board_arr)
  puts "choose between 1-9"
  ans=get.chomp.to_i-1
  if valid(ans)
    move(board, index,current_player)
    turn(board_arr)

  else

board(board_arr)

  end
end

def play(board_arr)
  until over(board_arr)
    turn(board)
    if won(board_arr)
      winner(board_arr)=="x"|| winner(board_arr)=="o")
      puts "congrats #{winner(board)}"

    elsif
      draw(board_arr)
      puts "its a draw"
    end
  end
end
