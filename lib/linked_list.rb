require "./lib/node"


class LinkedList
  attr_reader :count
  attr_accessor :head
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
    current_node = @head
    return @head if @head.nil?
    head_surname = "The #{@head.surname} family"
    until current_node.next_node.nil?
      current_node = current_node.next_node
    head_surname +=  ", followed by the #{current_node.surname} family"
    end
    head_surname
  end

  def prepend(surname)
    if @head.nil?
      @head = Node.new(surname)
    else
      new_node = Node.new(surname)
      new_node.next_node = @head
      @head = new_node
    end

    # def insert(count, surname)
    #   if @head.nil?
    #     find_node = Node.new(surname)
    #   else
    #     find_node = Node.new(number_of_nodes)
    #     number_of_nodes.next_node = current_node
    #     current_node.next_node = find_node
    #   end
    # end
  end
end
