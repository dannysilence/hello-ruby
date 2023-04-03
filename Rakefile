require 'rubygems'

task :info do
  sh 'ls -faln ./ && ls -faln ./tests/'
end

task :bdd do
  sh 'cd tests && cucumber  --verbose '
end

require "minitest/test_task"

Minitest::TestTask.create # named test, sensible defaults

# or more explicitly:

Minitest::TestTask.create(:tdd) do |t|
  t.libs << "test"
  t.libs << "lib"
  t.warning = false
  t.test_globs = ['tests/**/*_test.rb']
  t.verbose = true
end

task :default => :info