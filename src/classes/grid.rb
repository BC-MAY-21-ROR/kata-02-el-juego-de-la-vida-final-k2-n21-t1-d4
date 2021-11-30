# frozen_string_literal: true

# Class to generate grid
class Grid
  attr_accessor :grid, :grid2

  def initialize(column, rows)
    @col = column
    @row = rows
    @grid = Array.new(@col) { Array.new(@row) }
    @grid2 = Array.new(@col) { Array.new(@row) }
  end

  def generate_matrix
    (0..(@row - 1)).each do |r|
      (0..(@col - 1)).each do |c|
        @grid[c][r] = rand(4).zero? ? 1 : 0
      end
    end
  end

  def draw(gen)
    (0..(@row - 1)).each do |i|
      (0..(@col - 1)).each do |j|
        gen[j][i] == 1 ? print('*') : print('.')
      end
      print "\n"
    end
  end
end
