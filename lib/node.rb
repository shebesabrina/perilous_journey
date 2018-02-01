class Node
  attr_accessor :next_node, :surname

  def initialize(surname)
    @surname = surname
    @next_node = nil
  end
end
