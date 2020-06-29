#!/usr/bin/env ruby
# frozen_string_literal: true
require_relative('../lib/board.rb')
require_relative('../lib/helpers.rb')

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
puts "#{player1} its your turn to make a move"
puts 'Choose move between 1 to 9'
input = gets.chomp.to_i

until input.between?(1, 9)
  puts ' you did not choose correct move, choose again'
  input = gets.chomp.to_i
  
end


puts "#{player2} it's your turn to make a move"
puts 'Choose move between 1 to 9'
input2 = gets.chomp.to_i

until input2.between?(1, 9)
  puts ' you did not choose correct move, ch oose again'
  input2 = gets.chomp.to_i
  
end
