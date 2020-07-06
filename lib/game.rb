require_relative './board.rb'
require_relative './message.rb'

class Game
  attr_reader :players, :board_instance, :current_player, :other_player, :message_instance
  def initialize(players, board = Board.new, message = Message.new)
    @players = players
    @board_instance = board
    @message_instance = message
    @players_names = @players.keys
    @players_markers = @players.values
    @current_player, @other_player = @players_names.shuffle
  end

  def shuffle_players
    @current_player, @other_player = @players_names.shuffle
  end

  def switch_players
    @current_player, @other_player = @other_player, @current_player
  end

  def display_game_board
    @board_instance.display_board
  end

  def won?(symbol)
    @board_instance.win_comb.each do |group|
      return true if group.all?(symbol)
    end
    false
  end

  def draw?
    @last_index = @players.size - 1
    @board_instance.board.all?(String)
  end

  def reset
    @board_instance.board = ['', 1, 2, 3, 4, 5, 6, 7, 8, 9]
  end
end
# class Game
#   attr_accessor:player1, :player2,:board, :index, :player1, :player2
#   def innitialize(player1,player2,board=Board.new)
#     @player1=player1
#     @player2=player2
#     @board=board
#     @board.display_board
#   end

#   def switch_players
#     player1, player2 = player2, player1
#   end

#   def winning_comb
#     [
#       [@board[1], @board[2], @board[3]],
#       [@board[4], @board[5], @board[6]],
#       [@board[7], @board[8], @board[9]],
#       [@board[1], @board[4], @board[7]],
#       [@board[2], @board[5], @board[8]],
#       [@board[3], @board[6], @board[9]],
#       [@board[1], @board[5], @board[9]],
#       [@board[3], @board[5], @board[7]]
#     ]
#   end

#   def won(symbol)
#      @board.winning_comb.each do |check |
#      return true if check.all?(symbol)
#   end
#   false
# end

# def full?
#   if position_taken? && !won?

# end

#  def reset

# end
# end
# end