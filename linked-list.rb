class LinkedList
  def initialize
    @head = nil
  end

  def append(value)
    if @head.nil?
      @head = Node.new(value)
    else
      node = @head
      node = node.next_node until node.next_node.nil?
      node.next_node = Node.new(value)
    end
  end

  def prepend(value)
    @head = Node.new(value) if @head.nil?
    node = Node.new(value)
    node.next_node = self.head
    @head = node
  end

  def size
    size = 0
    return size if @head.nil?

    node = @head
    size += 1
    until node.next_node.nil?
      size += 1
      node = node.next_node
    end

    size
  end

  def head
    @head
  end

  def tail(node = @head)
    return "head is empty" if @head.nil?
    
    node = node.next_node until node.next_node.nil?

    node
  end

  def at(index)
    node = @head

    index -= 1

    index.times do
      node = node.next_node
    end
    node
  end

  def pop
    return if @head.nil?
    node = @head
    last_node = node
    until node.next_node.nil?
      last_node = node
      node = node.next_node
    end
    last_node.next_node = nil
  end

  def contains(value)
    return false if @head.nil?

    node = @head

    until node.next_node.nil?
      return true if node.value == value
      node = node.next_node
    end

    false
  end
end

class Node
  attr_accessor :value, :next_node
  def initialize(value = nil, next_node = nil)
    @value = value
    @next_node = next_node
  end
end

b = LinkedList.new
b.append(1)
b.append(2)
b.append(3)
b.append(4)
p b
puts b.contains(5)
