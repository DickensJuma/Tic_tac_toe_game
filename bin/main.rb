#!/usr/bin/env ruby
# frozen_string_literal: true
require_relative('../lib/board.rb')
require_relative('../lib/helpers.rb')
require_relative('../lib/logic.rb')



new_game =Board.new
 
puts ' Welcome to Tic Tac Toe'            
puts 'Please player one give us your name:'
player1 = gets.chomp                                                                  
puts 'Please player two give us your name:'
player2 = gets.chomp                      
puts "Please #{player1} choose between x or
o"  
selection=gets.chomp
until selection == "x" || selection == "o"
puts "Please #{player1} choose between x or o"
selection = gets.chomp
end

new_game.display_board

puts "#{player1} its your turn to make a move"
puts 'Choose move between 1 to 9'
move = gets.chomp.to_i

  
new_game.updated_board(current_plater=player1,move)

until valid_move?(input)
  puts ' you did not choose correct move, choose again'
  input = gets.chomp.to_i
     if input == position_taken
  new_game.updated_board
  logic
     end
end
                                         
