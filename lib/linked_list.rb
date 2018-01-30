require "./lib/node"

class LinkedList
  attr_reader :head, :count

  def initialize
    @head = nil
    @count = 0
  end

  def append(surname)
    if @head.nil?
      @head = Node.new(surname)
    else
      list_end = find_list_end
      list_end = Node.new(surname)
    end
    @count +=1
  end

  def find_list_end(current_node = @head) #recursion
    if current_node.next_node != nil
      current_node = current_node.next_node
      find_list_end(current_node)
    else
      return current_node.next_node
    end
  end

  def to_string
    if @count == 1
      "The #{@head.surname} family"
    else @count += 1
      "The #{@node.surname} family, followed by the #{@next_node.next_node}"
    end
  end
end
