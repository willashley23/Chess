require_relative 'piece'

class Bishop < Piece

  def initialize(board,color)
    super
  end

  def to_s
    " ♝ ".colorize({color: @color})
  end

  def symbol
    :B
  end

  def move_dirs
    DIAG_MOVES
  end
end
