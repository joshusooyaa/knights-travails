class Board
  attr_accessor :board

  def initialize
    @board = create_board
  end

  private

  def create_board
    board = Array.new(8) { Array.new(8) }
    ('A'..'H').each_with_index do |letter, i|
      ('1'..'8').each_with_index do |number, j|
        board[i][j] = "#{letter}#{number}"
      end
    end
    board
  end
end
