# test.rb
require 'minitest/autorun'
require_relative './../src/hello'

class HelloTest < Minitest::Test
  def test_world
    #assert_match 'world2', Hello.world, "Hello.world should return a string called 'world'"
    assert_match 'world2', Hello.world
  end

  def test_flunk
    flunk "You shall not pass"
  end

  def test_method1
    assert_equal 1, 1
    'hello'
  end
end