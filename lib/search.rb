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
    node.payload
  end
end

# def search(node)
#   if node.payload != 11
#     if !node.children.empty?
#       node.children.each do |child|
#         search(child)
#       end
#     end
#   else
#     puts node.payload
#     node.payload
#   end
# end

# def search(node)
#   if node.payload != 11
#     if !node.children.empty?
#       search(node.children.first)
#       search(node.children.last) if node.children.last
#     end
#   else
#     node
#   end
# end
