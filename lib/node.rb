class Node
  attr_reader :data
  attr_accessor :next_node # this needs to be writable because we will be changing the next_node of a node

  def initialize(data)
    @data = data
    @next_node = nil
  end
end