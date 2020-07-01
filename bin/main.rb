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
player1 = Player.new(player1, selection1)
selection2 = selection1 == 'X' ? 'O' : 'X'


player2 = Player.new(player2, selection2)
puts "#{player1.player} You are :#{selection1}"
puts "#{player2.player}: You are: #{selection2}"
puts new_game.display_board

puts "Hey #{player1.player} it's your turn to make a move"
puts 'Choose move between 1 to 9'
input1 = gets.chomp.to_i
until input1.between?(1, 9)
 puts ' you did not choose the correct move, choose again'
input1 = gets.chomp.to_i
while input1 == valid_move
  until game_over 
    play
    if won 
      "Congratulations, you are the winner, #{winner}"
    elsif draw
      "it's a draw game"
    display_board
    end
  end
end
puts "Hey #{player2.player} it's your turn to make a move"
puts 'Choose move between 1 to 9'
  input2 = gets.chomp.to_i
  until input2.between?(1, 9)
    puts ' you did not choose correct move, choose again'
  input2 = gets.chomp.to_i



until selection1 == "X" || selection1 == "O"
puts "Please #{player1.player} choose between X or O"
puts "#{player1.player} its your turn to make a move"
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