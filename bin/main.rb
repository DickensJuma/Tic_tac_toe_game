#!/usr/bin/env ruby
# frozen_string_literal: true
require_relative('../lib/board.rb')
require_relative('../lib/player.rb')
require_relative('../lib/logic.rb')


new_game =Board.new
 
puts ' Welcome to Tic Tac Toe'            
puts 'Please player one give us your name:'
player1 = gets.chomp                                                                  
puts 'Please player two give us your name:'
player2 = gets.chomp                      
puts "Please #{player1} choose between X or O"  
selection1=gets.chomp.upcase
selection2 = selection1 == 'X' ? 'O' : 'X'
puts "#{player1} You are :#{selection1}"
puts "#{player2}: You are: #{selection2}"
puts new_game.display_board

puts "Hey #{player1} it's your turn to make a move"
puts 'Choose move between 1 to 9'
input1 = gets.chomp.to_i
until input1.between?(1, 9)
 puts ' you did not choose the correct move, choose again'
input1 = gets.chomp.to_i

puts "Hey #{player2} it's your turn to make a move"
puts 'Choose move between 1 to 9'
  input2 = gets.chomp.to_i
  until input2.between?(1, 9)
    puts ' you did not choose correct move, choose again'
  input2 = gets.chomp.to_i



until selection1 == "X" || selection1 == "O"
puts "Please #{player1} choose between X or O"
puts "#{player1} its your turn to make a move"
puts 'Choose move between 1 to 9'
move = gets.chomp.to_i

  
new_game.move(current_player=player1,board,index)
until valid_move?(input)
  puts ' you did not choose correct move, choose again'
  input = gets.chomp.to_i
     if input == position_taken
  new_game.move(current_player,index,board)

  end
end
end
end
end