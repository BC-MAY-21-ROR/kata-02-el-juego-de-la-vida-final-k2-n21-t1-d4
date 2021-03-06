# frozen_string_literal: true

require_relative '../classes/grid'

RSpec.describe initialize do
  context 'initialize' do
    it 'calculate the dimensions of the matrix' do
      grid_test1 = Grid.new(3, 5)
      expect(grid_test1.grid2.length * grid_test1.grid2[0].length).to eq 15
    end
  end
end

RSpec.describe Grid do
  context 'The generation of the matrix' do
    it 'Matrix is not equal to nil' do
      grid_test2 = Grid.new(3, 5)
      grid_test2.generate_matrix
      expect(grid_test2.grid[0][0].nil?).to eq false    
    end
  end
end

RSpec.describe Grid do
  context 'draw the matrix' do
    it '' do
      grid_test3 = Grid.new(3,5)
      grid_test2.generate_matrix
      grid_test3.draw()
      expect(grid_test3.grid[3][5] == grid_test3.grid_char[3][5] ? ).to eq true 
    end
  end 
end
 

