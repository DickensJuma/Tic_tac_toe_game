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
# def count
#   result=0
#   board_arr.each do |n|
#     if n=="x" || n=="o"
#       result = result+1
#     end
#   end
#   result
# end
# def current_player
# if count(board_arr) % 2==0
#   puts "x"
# elsif
#   puts "o"
# end
# end
#
# end
# def valid(arg)
#   if arg.between(1..9)
#     return true
#   else
#     return false
# end
# def over(board_arr)
#   if full(board_arr) || won(board_arr) || draw(board_arr)
#     return true
#     puts "game over"
#   end
#
#  end
#
#   def board_full(board_arr)
#     board_arr.all? do |n|
#       n=="x" || n=="o"
#   end
#   end
