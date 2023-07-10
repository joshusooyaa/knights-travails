require_relative './knights-travails/board'
require_relative './knights-travails/knight'

def knight_moves(start, destination)
  board = Board.new
  knight = Knight.new()

  knight.move(start, destination)
end

knight_moves('A1', 'B2')