require "minitest/autorun"
require "minitest/pride"
require "./lib/node"
require "./lib/linked_list"

class LinkedListTest < Minitest::Test

  # def test_LinkList_exists
  #   list = LinkedList.new
  #   assert_instance_of LinkedList, list
  # end
  #
  # def test_head_default_is_nil
  #   list = LinkedList.new
  #   assert_nil list.head
  # end
  #
  # def test_it_can_add_data_to_node
  #   list = LinkedList.new
  #   list.append("West")
  #   # list.append("Burke")
  #   # list.append("Rhodes")
  #   assert_equal "West", list.head.surname
  #   assert_instance_of Node, list.head
  # end
  #
  # def test_count
  #
  #   list = LinkedList.new
  #
  #   assert_equal 0, list.count
  #   list.append("West")
  #   # require 'pry' ; binding.pry
  #   assert_equal 1, list.count
  #   list.append("Burke")
  #   assert_equal 2, list.count
  #
  #   list.append("Swift")
  #   list.append("Gomez")
  #   list.append("Jeppsen")
  #   assert_equal 5, list.count
  # end

  def test_it_can_print_a_string

    list = LinkedList.new
    list.append("West")
    assert_equal "The West family", list.to_string
    list.append("Burke")
    assert_equal "The West family, followed by the Burke family", list.to_string

    list.append("Thomas")
    assert_equal "The West family, followed by the Burke family, followed by the Thomas family", list.to_string

  end

  # def test_it_can_add_a_new_node
  #   list = LinkedList.new
  #   list.append("Rhodes")
  #   list.append("Hardy")
  #   assert_equal 2, list.count
  #
  #   assert_instance_of Node, list.head.next_node
  #   assert_equal "Hardy", list.head.next_node.surname
  # end
end
