def class LinkedList
  def initialize
    @head = nil
  end

  def append(value)
    @head = Node.new(value) if @head.nil?

    tail.next_node = Node.new(value)
  end

  def prepend(value)

  end

  def size
    size = 0
    return size if @head.nil?
    node = @head
    while !node.next_node.nil?
      size += 1
      node = node.next_node
    end

    return size
  end

  def head
    @head
  end

  def tail(node)
    tail(node.next_node) unless node.next_node.nil?

    node.next_node
  end

end

def class Node
  def initialize(value = nil, next_node = nil)
    @value = value
    @next_node = next_node
  end
end