require_relative './node'

class Knight
  def initialize(board)
    @board = board
    @to_visit = []
    @visited = []
    @moves = [[1, 2], [2, 1], [-1, 2], [-2, 1], [1, -2], [2, -1], [-1, -2], [-2, -1]]
  end

  def shortest_path(start, destination)
    current_square = Node.new(start)

    until current_square.square == destination
      add_reachable_squares(current_square)
      @visited.append(current_square)
      current_square = @to_visit.shift
    end
    trace_path(current_square)
  end

  private

  def trace_path(square)
    path = ''
    path_size = -1
    until square.nil?
      path.concat("#{square.square}\n")
      square = square.parent
      path_size += 1
    end
    puts "Shortest path is #{path_size} moves!"
    path
  end

  def add_reachable_squares(square)
    row = square.square.ord - 65
    column = square.square[1].to_i - 1

    @moves.each do |move|
      new_row = row + move[0]
      new_column = column + move[1]

      add_to_visit(square, new_row, new_column) if within_bounds?(new_row, new_column)
    end
  end

  def within_bounds?(row, column)
    row.between?(0, 7) && column.between?(0, 7)
  end

  def add_to_visit(square, row, column)
    new_square = @board.board[row][column]
    @to_visit.append(Node.new(new_square, square)) unless @visited.include?(new_square)
  end
end
