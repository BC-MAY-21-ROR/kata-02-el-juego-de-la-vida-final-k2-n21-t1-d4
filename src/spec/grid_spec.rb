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

RSpec.describe generate_matrix do
  context 'The generation of the matrix' do
    it 'Matrix is not equal to nil' do
      grid_test2 = Grid.new(3, 5)
      expect(grid_test2[0][0]).to eq !nil
    end
  end
end