class Knight
  attr_accessor :to_visit, :visited

  def initialize
    @to_visit = []
    @visited = []
  end

  def add_square(square)
    to_visit.append(square)
  end
end