# rubocop:disable Style/Documentation,Layout/SpaceInsideArrayLiteralBrackets,Layout/LineLength, Layout/EmptyLineAfterMagicComment, Lint/MissingCopEnableDirective,Layout/LineLength, Lint/RedundantCopDisableDirective
require_relative '../lib/game.rb'

describe Board do
  let(:board) { ['', 1, 2, 3, 4, 5, 6, 7, 8, 9] }
  let(:game_board) { Board.new }
  let(:new_board) do
    "

      #{board[1]}  |  #{board[2]}  |  #{board[3]}


      #{board[4]}  |  #{board[5]}  |  #{board[6]}


      #{board[7]}  |  #{board[8]}  |  #{board[9]}

    "
  end

  let(:false_board) do
    "

    #{board[0]}
         |     |
      #{board[1]}  |  #{board[2]}  |  #{board[3]}
    _____|_____|_____
         |     |
      #{board[4]}  |  #{board[5]}  |  #{board[6]}
    _____|_____|_____
         |     |
      #{board[7]}  |  #{board[8]}  |  #{board[9]}
         |     |
    "
  end

  context '#draw_board' do
    it 'returns true for the actual drawing of the game board' do
      expect(game_board.draw_board).to eql(new_board)
    end
  end

  context '#draw_board' do
    it 'returns true for the wrong drawing of the game board' do
      expect(game_board.draw_board).not_to eql(false_board)
    end
  end

  context '#display_board' do
    it 'returns true if the correct game board is displayed' do
      expect(game_board.display_board).to eql(new_board)
    end
  end

  context '#display_board' do
    it 'returns false if the wrong game board is displayed ' do
      expect(game_board.display_board).not_to eql(false_board)
    end
  end

  context '#in_range?' do
    it 'returns true if the chosen position is within bounds' do
      expect(game_board.in_range?(9)).to eql(true)
    end
  end

  context '#in_range?' do
    it 'returns false if the chosen position is out of bounds' do
      expect(game_board.in_range?(0)).to eql(false)
    end
  end

  context '#position_taken?' do
    it 'returns true for all the positions not taken by the player' do
      game_board.update_board('X', 2)
      expect(game_board.position_taken?(2)).to eql(true)
    end
  end

  context '#valid_ move?' do
    it 'returns true if the position is within bounds and not yet taken' do
      expect(game_board.valid_move?(2)).to eql(true)
    end
  end

  context '#valid_ move?' do
    it 'returns false if the position is within bounds but already taken' do
      game_board.update_board('X', 7)
      expect(game_board.valid_move?(7)).to eql(false)
    end
  end

  context '#valid_ move?' do
    it 'returns false if the position is out of bounds' do
      expect(game_board.valid_move?(89)).to eql(false)
    end
  end

  context '#update_board' do
    it 'returns the player\'s symbol of that index after it has been updated' do
      expect(game_board.update_board('X', 6)).to eql('X')
    end
  end

  context '#update_board' do
    it 'returns the player\'s symbol of that index after it has been updated' do
      expect(game_board.update_board('X', 6)).not_to eql('O')
    end
  end

  context '#win_comb' do
    let(:this_comb) do
      [
        [1, 2, 3],
        [4, 5, 6],
        [7, 8, 9],
        [1, 4, 7],
        [2, 5, 8],
        [3, 6, 9],
        [1, 5, 9],
        [3, 5, 7]
      ]
    end
    it 'returns true if the win combinators match' do
      expect(game_board.win_comb).to eql(this_comb)
    end
  end

  context '#win_comb' do
    let(:this_comb) do
      [
        [1, 2, 3],
        [4, 5, 6],
        [7, 8, 9],
        [1, 4, 7],
        [2, 5, 8],
        [3, 6, 9],
        [1, 5, 9],
        [3, 5, 6]
      ]
    end
    it 'returns false if the win combinators do not match' do
      expect(game_board.win_comb).not_to eql(this_comb)
    end
  end
end
