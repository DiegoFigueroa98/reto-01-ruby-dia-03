require_relative "create_board.rb"

def get_board_size
  print "Enter the board size: "
  board_size = gets.chomp.to_i
  return board_size
end

board_size = get_board_size

game = GameOfLife.new(board_size)
game.create_board
game.fill_randomly
game.show_board
game.next_state

puts "\nNumber of neighbors of each cell"
game.show_neighborhood