class LinkedListNode
  attr_accessor :value, :next_node
  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end
end
def print_values(list_node)
  if list_node
    print "#{list_node.value} --> "
    print_values(list_node.next_node)
  else
    print "nil\n"
    return
  end
end
def reverse_list(list, previous=nil)
  if list
    current = list.next_node
    list.next_node = previous
    reverse_list(current, list)
  else
    return previous
  end
end
def loop?(first_node)
  turtle = first_node
  hare = first_node
  while true
    return false if hare == nil
    hare = hare.next_node
    return false if hare == nil
    hare = hare.next_node
    turtle = turtle.next_node
    return true if hare == turtle
  end
end
node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)
# to test loop? please remove '#' below before node1.next_node
# node1.next_node = node3

# to test loop? please add a '#' below before print_values(node3) and print_values(reverse)
print_values(node3)
reverse = reverse_list(node3)
print_values(reverse)
puts loop?(node3)
puts loop?(reverse)