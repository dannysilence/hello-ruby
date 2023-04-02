# test.rb
require 'minitest/autorun'
require_relative './../src/hello'

class AnotherTest < Minitest::Test
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