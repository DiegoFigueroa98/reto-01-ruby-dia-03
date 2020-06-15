class GameOfLife
  attr_accessor :board,:neighborhood

  def initialize(size)
      @board = Array.new(size+2){Array.new(size+2)} 
      @neighborhood  = Array.new(size+2){Array.new(size+2)}
  end

  def create_board
      for x in 0..@board.size-1
          for y in 0..@board.size-1
              @board[x][y]=0
              @neighborhood[x][y]=0
          end
      end
  end

  def show_board
      @board.each do |e|
          puts "#{e}" 
      end
  end

  def show_neighborhood
      @neighborhood.each do |e|
          puts "#{e}" 
      end
  end

  def fill_randomly
      for x in 1..@board.size-2
          for y in 1..@board.size-2
              @board[x][y] = rand(0..1)
          end
      end     
  end 

  def next_state
      for x in 1..@board.size-2      
          for y in 1..@board.size-2
              neighbors=0
              if @board[x-1][y]==1 then 
                  neighbors += 1
              end
              if @board[x-1][y-1]==1 then 
                  neighbors += 1
              end
              if @board[x-1][y+1]==1 then 
                  neighbors += 1
              end
              if @board[x][y-1]==1 then 
                  neighbors += 1
              end
              if @board[x][y+1]==1 then 
                  neighbors += 1
              end
              if @board[x+1][y-1]==1 then 
                  neighbors += 1
              end
              if @board[x+1][y+1]==1 then 
                  neighbors += 1
              end
              if @board[x+1][y]==1 then 
                  neighbors += 1
              end 
             @neighborhood[x][y] = neighbors 
          end   
      end
  end 
end 