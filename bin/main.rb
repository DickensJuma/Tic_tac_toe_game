#!/usr/bin/env ruby
# frozen_string_literal: true

puts ' Welcome to Tic Tac Toe'
puts 'Please player one give us your name:'
player1 = gets.chomp
puts 'Please player two give us your name:'
player2 = gets.chomp
puts "Please #{player1} choose between x or o"
selection = gets.chomp.to_s

if selection == 'x'
  puts "#{player1}, you are #{selection} for this game"
  puts "#{player2}, you are o for this game"
elsif selection == 'o'
  puts "#{player1}, you are #{selection} for this game"
  puts "#{player2}, you are x for this game"
end

def board
  puts
  puts '1|2|3'
  puts  '-----'
  puts  '4|5|6'
  puts  '-----'
  puts  '7|8|9'
end
board

# def move(board_arr, arg,current_ player)
#   board[arg]=current_player
#
# end
#
#
# def current_player
#
# end
# def valid(arg)
#   if arg.between(1..9)
#     return true
#   else
#     return false
# end
# def over(board_arr)
#   if full(board_arr) && !won(board_arr)
#     return true
#     puts "game over"
#   end
#
#  end
#
#   def board_full(board_arr)
#     if position-taken(board_arr,arg)|| !won
# (board_arr)
# return true
# puts "board if full play again"
#     end
#   end
#
# def won
#   board(board_arr)==board(win_combination)
# end
#
# def draw
# end
#
# def winner
#
#
# end
#
# win_combinations=[[1,2,3],[4,5,6],[7,8,9],[1,5,9],[3,5,7],[1,4,7],[2,5,8],[3,6,9]]
#
# def turn(board_arr)
#   puts "choose between 1-9"
#   ans=get.chomp.to_i-1
#   if valid(ans)
#     move(board, index,current_player)
#     turn(board_arr)
#
#   else
#
# board(board_arr)
#
#   end
# end
#
# def play(board_arr)
#   until over(board_arr)
#     turn(board)
#     if won(board_arr)
#       winner(board_arr)=="x"|| winner(board_arr)=="o")
#       puts "congrats #{winner(board)}"
#
#     elsif
#       draw(board_arr)
#       puts "its a draw"
#     end
#   end
# end
