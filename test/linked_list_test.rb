require "minitest/autorun"
require "minitest/pride"
require "./lib/linked_list"


class LinkedListTest <Minitest::Test

  def test_LinkList_exists
    list = LinkedList.new
    assert_instance_of LinkedList, list
  end

  def test_head_default_is_nil
    list = LinkedList.new
    assert_nil list.head
  end

  def test_it_can_add_data_to_node
    list = LinkedList.new
    assert_instance_of Node, list.append("West")
  end
  def test_count
    list = LinkedList.new
    list.append("West")
    assert_equal 1, list.count
  end

  def test_it_can_print_a_string
    list = LinkedList.new
    list.append("West")
    assert_equal "The West family", list.to_string
  end
end
