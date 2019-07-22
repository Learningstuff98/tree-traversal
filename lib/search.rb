require_relative 'tree'

def search(node)
  if node.payload != 11
    if !node.children.empty?
      node.children.each do |child|
        search(child)
      end
    end
  else
    puts [node, node.payload].inspect
    node
  end
end
