#!/usr/bin/env ruby
# frozen_string_literal: true

puts ' Welcome to Tic Tac Toe'
puts 'Please player one give us your name:'
player1 = gets.chomp
puts 'Please player two give us your name:'
player2 = gets.chomp
puts "Please #{player1} choose between x or o"
selection = gets.chomp.to_s
def board
  puts 'x | o | x'
  puts '-------'
  puts '0 | o | x'
  puts '-------'
  puts 'o| x | o'
end
if selection == 'x'
  puts "#{player1}, you are #{selection} for this game"
  puts "#{player2}, you are o for this game"
  board
elsif selection == 'o'
  puts "#{player1}, you are #{selection} for this game"
  puts "#{player2}, you are x for this game"
  board

end
