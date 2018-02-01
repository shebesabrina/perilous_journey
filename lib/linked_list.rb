require "./lib/node"
# require 'pry'

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
      current_node = @head
      until current_node.next_node.nil?
        current_node = current_node.next_node
      end
      current_node.next_node = Node.new(surname)
    end
  end

  def count
    number_of_nodes = 0
    current_node = @head
    return 0 if @head.nil?
    number_of_nodes += 1
    until current_node.next_node.nil?
      number_of_nodes += 1
      current_node = current_node.next_node
    end
    number_of_nodes
  end


  def to_string
    # binding.pry
    current_node = @head
    return @head if @head.nil?
    head_surname = "The #{@head.surname} family"
    until current_node.next_node.nil?
      current_node = current_node.next_node
    head_surname +=  ", followed by the #{current_node.surname} family"
    end
    head_surname
  end
end
