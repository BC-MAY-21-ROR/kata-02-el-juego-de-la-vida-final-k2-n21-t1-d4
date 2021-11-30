# frozen_string_literal: true

require './classes/grid'
# Class to calculate generations
class Cells
  def generation(grid, grid2)
    col = grid.length
    row = grid[0].length
    (1..row - 2).each do |i|
      (1..col - 2).each do |j|
        alive_cells = 0
        (-1..1).each do |a|
          (-1..1).each do |b|
            alive_cells += grid[j - a][i - b]
          end
        end
        alive_cells -= grid[j][i]
        grid2[j][i] = if grid[j][i] == 1 && alive_cells < 2
                        0
                      elsif grid[j][i] == 1 && alive_cells > 3
                        0
                      elsif grid[j][i].zero? && alive_cells == 3
                        1
                      else
                        grid[j][i]
                      end
      end
    end
  end
end
