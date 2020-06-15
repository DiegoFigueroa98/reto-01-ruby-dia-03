class Board
  
  def initialize(board_size)
    @board = []
    @board_size = board_size
  end

  def fill_board()
    for i in 1..(@board_size ** 2) do
      @board.push rand(1..9)
    end
  end

  def show_board()
    @board.each_with_index do |board_item, index|
      if (index +1) % @board_size == 1
        puts
      end
      print "|"
      print board_item
      print "|"
      print " "
    end 
  end
end