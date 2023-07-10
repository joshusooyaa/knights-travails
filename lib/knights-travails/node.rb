class Node
  attr_reader :square, :parent

  def initialize(square, parent = nil)
    @square = square
    @parent = parent
  end
end