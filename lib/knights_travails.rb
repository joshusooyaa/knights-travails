require_relative './knights-travails/board'
require_relative './knights-travails/knight'

def knight_moves(start, destination)
  board = Board.new
  knight = Knight.new(board)

  puts knight.shortest_path(start, destination)
end

knight_moves('A1', 'B1')