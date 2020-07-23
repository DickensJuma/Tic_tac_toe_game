require_relative '../lib/board.rb'
require_relative '../lib/player.rb'
require_relative '../lib/game.rb'

describe Game do
  let(:player_one) { Player.new('arafat', 'X') }
  let(:player_two) { Player.new('dickens', 'O') }
  let (:cycle_player) {%w[arafat dickens].shuffle}
  let(:players) do
    { player_one.player_name => player_one.symbol,
      player_two.player_name => player_two.symbol }
  end
  let(:game) { Game.new(players) }

  context '#switch_players' do
    it 'returns true if the other player becomes current player and vice-versa' do
      expect(game.switch_players).to eql(cycle_player)
    end
  end

  context '#switch_players' do
    it 'returns false if the other player does not become current player and vice-versa' do
      expect(game.switch_players).not_to be (cycle_player.shuffle) 
    end
  end

  context '#display_game_board' do
    let(:board) { ['', 1, 2, 3, 4, 5, 6, 7, 8, 9] }
    let(:new_board) do
      "

      #{board[1]}  |  #{board[2]}  |  #{board[3]}


      #{board[4]}  |  #{board[5]}  |  #{board[6]}


      #{board[7]}  |  #{board[8]}  |  #{board[9]}

    "
    end

    it 'returns true if the actual game board is displayed' do
      expect(game.display_game_board).to eql(new_board)
    end
  end

  context '#won?' do
    it 'returns true for every win combination found' do
      game.board_instance.board = ['', 'X', 'O', 3, 4, 'X', 6, 7, 'O', 'X']
      expect(game.won?('X')).to eql(true)
    end
  end

  context '#won?' do
    it 'returns true for every win combination found' do
      game.board_instance.board = ['', 'X', 'O', 3, 4, 'X', 6, 'X', 'O', 'O']
      expect(game.won?('X')).to eql(false)
    end
  end

  context '#draw?' do
    it 'returns true if all positions on the board are occupied' do
      game.board_instance.board = ['', 'X', 'O', 'X', 'O', 'O', 'X', 'O', 'O', 'X']
      expect(game.draw?).to eql(true)
    end
  end

  context '#draw?' do
    it 'returns false if all positions on the board are not occupied' do
      game.board_instance.board = ['', 'X', 'O', 'X', 4, 'O', 'X', 'O', 'O', 9]
      expect(game.draw?).to eql(false)
    end
  end

  context '#reset' do
    it 'returns true if the game board is reset for new game or replay' do
      game.board_instance.board = ['', 'X', 'O', 'X', 'O', 'O', 'X', 'O', 'O', 'X']
      expect(game.reset).to eql(['', 1, 2, 3, 4, 5, 6, 7, 8, 9])
    end
  end
end
