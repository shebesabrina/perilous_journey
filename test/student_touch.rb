require "minitest"
require "minitest/autorun"
require "minitest/pride"
require "./lib/student"

class StudentTest < Minitest::Test
  def test_it_exists
    student = Student.new("Penelope")
    assert_instance_of Student, student
  end

  def test_it_has_a_name
    student = Student.new("Penelope")
    assert_equal "Penelope", student.name
  end

  def test_it_has_a_different_name
      student = Student.new("Joe")
      assert_equal "Joe", student.name
  end
end
