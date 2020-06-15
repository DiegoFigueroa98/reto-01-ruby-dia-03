require_relative "create_board.rb"

def get_board_dimension
  print "Enter the board size: "
  board_size = gets.chomp.to_i
  return board_size
end

board_size = get_board_dimension

createBoard = Board.new(board_size)
createBoard.fill_board
createBoard.show_board