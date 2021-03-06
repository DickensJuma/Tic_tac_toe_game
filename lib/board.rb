class Board
  attr_accessor :board
  def initialize
    @board = ['', 1, 2, 3, 4, 5, 6, 7, 8, 9]
  end

  def draw_board
    "

      #{@board[1]}  |  #{@board[2]}  |  #{@board[3]}


      #{@board[4]}  |  #{@board[5]}  |  #{@board[6]}


      #{@board[7]}  |  #{@board[8]}  |  #{@board[9]}

    "
  end

  def display_board
    draw_board
  end

  def update_board(marker, pos)
    @board[pos] = marker
  end

  def win_comb
    [
      [@board[1], @board[2], @board[3]],
      [@board[4], @board[5], @board[6]],
      [@board[7], @board[8], @board[9]],
      [@board[1], @board[4], @board[7]],
      [@board[2], @board[5], @board[8]],
      [@board[3], @board[6], @board[9]],
      [@board[1], @board[5], @board[9]],
      [@board[3], @board[5], @board[7]]
    ]
  end

  def position_taken?(index)
    return true if @board[index] == 'X' || @board[index] == 'O'
  end

  def in_range?(index)
    index.between?(1, 9)
  end

  def valid_move?(index)
    in_range?(index) && !position_taken?(index)
  end
end
