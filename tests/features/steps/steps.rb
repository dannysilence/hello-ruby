require 'minitest/autorun'

class DummySteps
  include Minitest::Assertions

  attr_accessor :assertions, :failure

  def initialize
    self.assertions = 0
    self.failure = nil
  end
end

Given('this will pass') do
  @this_will_pass = true
end
  
Given('this will fail') do
  @this_will_pass = false
end
  
When('I do an action') do
  
end

Then('some results should be there') do
  assert_equal 1, 1
end

Given('this will pass {int} times') do |n|
  @a=n
end

When('I do an action {int} times') do |m|
  @b=m
end

Then('some results should be there for {int} times') do |k|
  n = @a
  m = @b
  z = n * m
  @c = z
  # assert_equal(k, z)
end