# test.rb
require "test/unit"
require_relative './../src/hello'

class HelloTest < Test::Unit::TestCase
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


class AnotherTest < Test::Unit::TestCase
  def test_pass1
    'passed'
  end
  
  def test_pass2
    'passed'
  end

  def test_pass3
    'passed'
  end
end

class XYZAnotherTest < Test::Unit::TestCase
  def test_pass1
    'passed again'
  end

  def test_pass2
    'passed'
  end

  def test_pass3
    'passed'
  end
  
end