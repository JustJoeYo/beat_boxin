require 'node.rb'

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  def append(data)
    new_node = Node.new(data)
    if @head.nil?
      @head = new_node # If list = empty, set the new node as the head
    else
      current = @head
      current = current.next_node while current.next_node # Go to end of the list
      current.next_node = new_node # Set new node as the next node
    end
  end

  def count
    return 0 if @head.nil?

    count = 1
    current = @head
    while current.next_node
      count += 1 # Increment the count for each node we have
      current = current.next_node # Go to next node
    end
    count # Return the total count of nodes
  end

  def to_string
    return "" if @head.nil? # If list = empty, return empty string

    elements = []
    current = @head
    while current
      elements << current.data # Collect data from each node
      current = current.next_node # Move to the next node
    end
    elements.join(" ") # Join collected data with spaces and return it
  end
end