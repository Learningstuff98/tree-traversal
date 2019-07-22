require_relative 'tree'

def search(node)
  if !node.children.empty?
    node.children.each do |child|
      puts child.payload
      search(child)
    end
  else
    puts [node, node.payload].inspect
    print node
    node
  end
end

def print_tree(node)
  if node
    if node.payload == 11
      return node
    end
    node.children.each do |child|
      print_tree(child)
    end
  end
end

  deep_fifth_node = Tree.new(5, [])
  eleventh_node = Tree.new(11, [])
  fourth_node   = Tree.new(4, [])

  ninth_node = Tree.new(9, [fourth_node])
  sixth_node = Tree.new(6, [deep_fifth_node, eleventh_node])
  seventh_node = Tree.new(7, [sixth_node])
  shallow_fifth_node = Tree.new(5, [ninth_node])

  trunk   = Tree.new(2, [seventh_node, shallow_fifth_node])

return_value = print_tree(trunk)

if return_value
  puts 'it worked'
else
  puts "it didn't work"
end
