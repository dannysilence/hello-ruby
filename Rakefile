require 'rubygems'

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

task :test do
  # Rake::Task["info"].invoke
  Rake::Task["tdd"].invoke
  Rake::Task["bdd"].invoke
end

task :check do
  # Rake::Task["info"].invoke
  sh 'bundle exec rubocop ./src --format github --fail-level fatal --color'
  sh 'bundle exec rubocop ./src --format github --fail-level fatal --color'
end

task :default => :test
