require_relative './knights-travails/board'
require_relative './knights-travails/knight'

def knight_moves(start, destination)
  board = Board.new
  knight = Knight.new(board)

  puts knight.shortest_path(start, destination)
end

def user_choice
  response = gets.chomp.upcase
  until response[0].between?('A', 'H') && response[1]&.between?('1', '8') && response.length == 2
    response = gets.chomp.upcase
  end
  response
end

puts "Choose the knight's starting square."
start = user_choice
puts "Choose the knight's destination square."
destination = user_choice

knight_moves(start, destination)