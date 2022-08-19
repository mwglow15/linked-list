class LinkedList
  def initialize
    @head = nil
  end

  def append(value)
    @head = Node.new(value) if @head.nil?
    tail = self.tail
    tail.next_node = Node.new(value)
  end

  def prepend(value)
    node = Node.new(value)
    node.next_node = self.head
    @head = node
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

  def tail(node=@head)
    return "head is empty"
    tail(node.next_node) unless node.next_node.nil?

    node.next_node
  end

end

class Node
  def initialize(value = nil, next_node = nil)
    @value = value
    @next_node = next_node
  end
end

a = LinkedList.new
a.append(1)
p a