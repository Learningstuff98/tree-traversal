require 'spec_helper'

RSpec.describe Tree, type: :model do
  describe 'search should work' do

    it '#search' do
      deep_fifth_node = Tree.new(5, [])
      eleventh_node = Tree.new(11, [])
      fourth_node   = Tree.new(4, [])

      ninth_node = Tree.new(9, [fourth_node])
      sixth_node = Tree.new(6, [deep_fifth_node, eleventh_node])
      seventh_node = Tree.new(7, [sixth_node])
      shallow_fifth_node = Tree.new(5, [ninth_node])

      trunk   = Tree.new(2, [seventh_node, shallow_fifth_node])
      expect(stringify_node(search(trunk))).to eq('11')
      # expect(stringify_node(eleventh_node)).to eq('11')
    end

  end
end