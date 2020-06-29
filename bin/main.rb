#!/usr/bin/env ruby
# frozen_string_literal: true
require_relative('../lib/board.rb')
require_relative('../lib/helpers.rb')
require_relative('../lib/logic.rb')

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


new_game =Board.new
new_game.display_board
def play
  i=0
  game_on=false
  loop do 
    while game_on==true
puts "#{player1} its your turn to make a move"
puts 'Choose move between 1 to 9'
input = gets.chomp.to_i
i +=1
until valid_move?
  puts ' you did not choose correct move, choose again'
  input = gets.chomp.to_i
  if input == position_taken
  new_game.updated_board
  logic
end
end
    end
  end
end


def update(board)
   play
   if valid_move?(board, index)
      move(board, index, current_player(board))
      playboard)
   end
   display_board(board)
end



