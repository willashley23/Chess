require_relative './pieces/piece'
require_relative 'pieces'
require 'byebug'

class Board
  attr_accessor :grid

def initialize()
  @grid= Array.new(8) { Array.new(8) }
end




def move_piece(start, end_pos)
    #update the grid and also the moved piece's position
    #raise exception if there is no piece at start or the piece cannot
    # make such move
    # start_piece = self(start)
    # end_piece = self(end_pos)
    self(end_pos), self(start) = start_piece, end_piece
    start_piece.pos, end_piece.pos = end_pos, start_piece
end

def in_bounds?(pos)
  return true if pos[0].between?(0,7) && pos[1].between?(0,7)
  false
end

def [](pos)
  x,y = pos
  @grid[x][y] = Piece.new(self)
end

def []=(pos, value)
  x,y = pos
  @grid[x][y] = value
end

def create_board
  @grid[0] = [
    Rook.new(self, :black),
    Knight.new(self, :black),
    Bishop.new(self, :black),
    King.new(self, :black),
    Queen.new(self, :black),
    Bishop.new(self, :black),
    Knight.new(self, :black),
    Rook.new(self, :black)
  ]
  @grid[1].map! {|space| space = Pawn.new(self, :black)}
  # @grid[2...-2].flatten.map! {|space| space = NullPiece.instance}
  i = 2
  while i < 6
    @grid[i].map! {|space| space = NullPiece.instance}
    i+=1
  end
  @grid[-2].map! {|space| space = Pawn.new(self, :white)}
  @grid[-1] = [
    Rook.new(self, :white),
    Knight.new(self, :white),
    Bishop.new(self, :white),
    Queen.new(self, :white),
    King.new(self, :white),
    Bishop.new(self, :white),
    Knight.new(self, :white),
    Rook.new(self, :white)
  ]

end

def checkmate?
  #Check all of King's valid moves, if all of them are also valid moves
  #of opponent's pieces, then return true.
end

def find_king(color)
end


#update piece instance's location w/attr accessor
#update same on board
end

#pieces need to know how they move, direction ,etc
#board's valid move checks to see
# b= Board.new
# p b.create_board
