class Tree
  attr_accessor :payload, :children
 
  def initialize(payload, children)
    @payload = payload
    @children = children
  end

end
