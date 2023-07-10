require_relative './node'

class Knight
  attr_accessor :to_visit, :visited

  def initialize(start, destination)
    @to_visit = []
    @visited = []
  end

  def move(current_square, destination)

  end

  private

  def add_square(square)
    to_visit.append(square)
  end
end