require_relative 'piece'

class Queen < Piece
  def initialize(board,color)
    super
  end

  def to_s
    " ♛ ".colorize({color: @color})
  end


  def symbol
    :Q
  end

  def move_dirs
  end
  
end
