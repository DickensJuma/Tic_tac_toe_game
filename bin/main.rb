#!/usr/bin/env ruby
# frozen_string_literal: true

# This is the welcome page for the players
puts ' Welcome to Tic Tac Toe'
puts 'Please player one give us your name:'
player1 = gets.chomp
# The name of the first player is stored here
puts 'Please player two give us your name:'
player2 = gets.chomp
puts "Please #{player1} choose between x or o"
selection = gets.chomp.to_s
# The name of the second player is stored here
if selection == 'x'
  puts "#{player1}, you are #{selection} for this game"
  puts "#{player2}, you are o for this game"
elsif selection == 'o'
  puts "#{player1}, you are #{selection} for this game"
  puts "#{player2}, you are x for this game"
end
# used selection to save whatever the value the first player chooses
def board
  puts
  puts '1|2|3'
  puts  '-----'
  puts  '4|5|6'
  puts  '-----'
  puts  '7|8|9'
end
# method displaying the game interface, by asking the first player to choose a
# move and the move value is saved as input and input2 for both players
board
puts "#{player1} its your turn to make a move"
puts 'Choose move between 0 to 9'
input = gets.chomp.to_i
# we forced the two players to make sure they enter a valid value of 0-9
until input.between?(0, 9)
  puts ' you did not choose correct move, choose again'
  input = gets.chomp.to_i

end

puts "#{player2} it's your turn to make a move"
puts 'Choose move between 0 to 9'
input2 = gets.chomp.to_i

until input2.between?(0, 9)
  puts ' you did not choose correct move, ch oose again'
  input2 = gets.chomp.to_i
end
# game logic is showed below, whatever input from the players is cehcked
# whether it's a winning, draw, or lost move.
count = 0
loop do
  until game_over
    turn
    if won
      winner == 'x' || winner == 'o'
      puts "Congrats you won #{winner}"
    elsif draw
      puts 'its a draw'
    end
    count = +1
    break if won || draw
  end
end

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
