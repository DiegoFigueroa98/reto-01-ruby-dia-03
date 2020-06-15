class GameOfLife
  attr_accessor :board

  def initialize(size)
      @board = Array.new(size+2){Array.new(size+2)} 
  end

  def create_board
      for x in 0..@board.size-1
          for y in 0..@board.size-1
              @board[x][y]=0
          end
      end
  end

  def fill_randomly
      for x in 1..@board.size-2
          for y in 1..@board.size-2
              @board[x][y] = rand(0..1)
          end
      end     
  end 

  def show_board
      @board.each do |e|
          puts "#{e}" 
      end
  end
end 