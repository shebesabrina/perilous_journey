class LinkedList
  attr_accessor :head, :count

  def initialize(head = nil, count = 0)
    @head = head
    @count = count
  end

  def append(surname)
    node = Node.new(surname)
    # node.next_node = @head
    # @head = node
    @count += 1
  end

  def count
    puts @count
  end

  def to_string
     puts "This #{@head.surname} family"
  end
end
