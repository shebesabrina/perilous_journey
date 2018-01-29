require "minitest/autorun"
require "minitest/pride"
require "./lib/node_2"

class NodeTest < Minitest::Test

  def test_it_exists
    node = Node.new("Burke")

    assert_instance_of Node, node
  end

  def test_it_has_a_surname
    node = Node.new("Burke")

    assert_equal "Burke", node.surname
  end

  def test_it_has_different_surname
    node = Node.new("West")

    assert_equal "West", node.surname
  end


end
