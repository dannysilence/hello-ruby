# test.rb
require 'minitest/autorun'
require 'minitest/spec'

class XYZAnotherTest < Minitest::Test
  def test_pass1
    'passed again'
  end

  def test_pass2
    assert_equal 10, 10
    'passed'
  end

  def test_pass3
    'passed'
  end
  
end