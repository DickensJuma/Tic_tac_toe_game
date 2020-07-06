#!/usr/bin/env ruby
# frozen_string_literal: true
require_relative('../lib/board.rb')
require_relative('../lib/player.rb')
require_relative('../lib/game.rb')

puts '--------Welcome to Tic-Tac-Toe game--------'
puts 'Please choose a name and favourite letters to play with.'

puts 'First player, please enter your name '
player1 = gets.chomp.capitalize!
letter_one = ''
until %w[X O].include?(letter_one)
  puts "#{player1}, please choose between X and O to play with."
  letter_one = gets.chomp.upcase!
end
letter_two = letter_one == 'O' ? 'X' : 'O'
player_one = Player.new(player1, letter_one)

puts 'Second player\'s name'
player2 = gets.chomp.capitalize!
while [player1].include?(player2)
  puts '#The name {player1} already exists.'
  puts 'Second player\'s name'
  player2 = gets.chomp.capitalize!
end
puts "#{player1}, your marker is #{letter_one}."
puts "#{player2}, your marker is #{letter_two}."
puts ''

player_two = Player.new(player2, letter_two)
players = { player_one.player_name => player_one.symbol, player_two.player_name => player_two.symbol }

game = Game.new(players)
play_again = true
while play_again
  game.shuffle_players
  puts game.message_instance.first_player(game.current_player)
  loop do
    puts game.message_instance.give_msg(game.display_game_board)
    puts game.message_instance.move_msg_to(game.current_player)
    pos = gets.chomp.to_i
    until game.board_instance.valid_move?(pos)
      puts game.display_game_board
      puts game.message_instance.invalid_move_msg
      puts "#{game.current_player}, make a valid move."
      pos = gets.chomp.to_i
    end
    game.board_instance.update_board(game.players[game.current_player], pos)
    if game.won?(game.players[game.current_player])
      puts game.message_instance.give_msg(game.display_game_board)
      puts game.message_instance.win_msg(game.current_player)
      break
    elsif game.draw?
      puts game.message_instance.give_msg(game.display_game_board)
      puts game.message_instance.draw_msg
      break
    else
      game.switch_players
    end
  end
  game.reset
  puts 'Would you like to play again? (yes(y) or no(n))'
  play_again = gets.chomp.downcase
  play_again = %w[yes y].include?(play_again) ? true : false
end
puts 'Goodbye guys! See you next time.'
# new_game =Board.new
 
# puts ' Welcome to Tic Tac Toe'            
# puts 'Please player one give us your name:'
# player1 = gets.chomp                                                                  
# puts 'Please player two give us your name:'
# player2 = gets.chomp                      
# puts "Please #{player1} choose between X or O"  
# selection1=gets.chomp.upcase
# player1 = Player.new(player1, selection1)
# selection2 = selection1 == 'X' ? 'O' : 'X'


# player2 = Player.new(player2, selection2)
# puts "#{player1.player} You are :#{selection1}"
# puts "#{player2.player}: You are: #{selection2}"
# puts new_game.display_board
# game = Game.new()
# current_player = Player.new(player1,selection1)
# puts "Hey #{player1.player} it's your turn to make a move"
# puts 'Choose move between 1 to 9'
# input1 = gets.chomp.to_i

# until input1.between?(1, 9)
#  puts ' you did not choose the correct move, choose again'
# input1 = gets.chomp.to_i
# while valid_move?(input1)
# puts game.update_board(input1, selection1)
# end
# #puts "Hey #{player2.player} it's your turn to make a move"
# #puts 'Choose move between 1 to 9'
#  # input2 = gets.chomp.to_i
#   #until input2.between?(1, 9)
#    # puts ' you did not choose correct move, choose again'
#   #input2 = gets.chomp.to_i



# # until selection1 == "X" || selection1 == "O"
# # puts "Please #{player1.player} choose between X or O"
# # puts "#{player1.player} its your turn to make a move"
# # puts 'Choose move between 1 to 9'
# # move = gets.chomp.to_i

  
# # new_game.move(current_player=player1,board,index)
# # until valid_move?(input)
# #   puts ' you did not choose correct move, choose again'
# #   input = gets.chomp.to_i
# #      if input == position_taken
# #   new_game.move(current_player,index,board)

# #   end
# end
