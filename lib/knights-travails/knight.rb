require_relative './node'

class Knight
  attr_accessor :to_visit, :visited

  def initialize(board)
    @board = board
    @to_visit = []
    @visited = []
    @moves = [[1, 2], [2, 1], [-1, 2], [-2, 1], [1, -2], [2, -1], [-1, -2], [-2, -1]]
  end

  def shortest_path(start, destination)
    current_square = Node.new(start)
    destination_square = Node.new(destination)
    @visited.append(current_square)

    loop do
      return trace_path(current_square) if current_square.square == destination_square.square

      append_reachable_squares(current_square)
      @visited.append(current_square)
      current_square = @to_visit.shift
    end
  end

  private

  def add_square(square)
    to_visit.append(square)
  end

  def trace_path(square)
    path = ''
    until square.nil?
      path.concat("#{square.square}\n")
      square = square.parent
    end
    path
  end

  def append_reachable_squares(square)
    row = square.square.ord - 65
    column = square.square[1].to_i - 1

    @moves.each do |move|
      row_direction = row + move[0]
      column_direction = column + move[1]
      unless row_direction.negative? || column_direction.negative?
        new_square = @board.board[row_direction][column_direction]
        @to_visit.append(Node.new(new_square, square)) unless new_square.nil? || @visited.include?(new_square)
      end
    end
  end
end