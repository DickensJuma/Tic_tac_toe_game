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
puts "#{player1} its your turn to make a move"
puts 'Choose move between 0 to 9'
input = gets.chomp.to_i

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


