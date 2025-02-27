require 'node.rb'

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  def append(data)
    new_node = Node.new(data)
    if @head.nil?
      @head = new_node
    else
      current = @head
      current = current.next_node while current.next_node
      current.next_node = new_node
    end
  end

  def count
    return 0 if @head.nil?

    count = 1
    current = @head
    while current.next_node
      count += 1
      current = current.next_node
    end
    count
  end

  def to_string
    return "" if @head.nil?

    elements = []
    current = @head
    while current
      elements << current.data
      current = current.next_node
    end
    elements.join(" ")
  end
end