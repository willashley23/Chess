require_relative 'piece'

class Pawn < Piece
  def initialize(board,color)
    super
  end

  def to_s
    " ♟ ".colorize({color: @color})
  end

  def symbol
    :P
  end

  def move_dirs()

  end



end
