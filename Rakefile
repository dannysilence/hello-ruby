require 'rubygems'
require 'simplecov'            # These two lines must go first

SimpleCov.start do     # ommit test classes from the report
  # if ENV['CI'
  formatter SimpleCov::Formatter::HTMLFormatter
  #else
    #formatter SimpleCov::Formatter::MultiFormatter.new([
    #  SimpleCov::Formatter::SimpleFormatter
    #  SimpleCov::Formatter::HTMLFormatter
    #])
  # end

  add_group 'Libraries', 'lib'
  add_group 'Sources', 'src'

  #add_filter 'test'
  #add_filter 'lib'
  #add_filter 'src'
end

require 'rubocop/rake_task'
require 'minitest/test_task'

Minitest::TestTask.create # named test, sensible defaults

# task :lint do
#   sh `rubocop -f html -o lint.html --fail-level F -c .rubocop.yml -E 2> /dev/null`
# end

RuboCop::RakeTask.new(:lint) do |task|
  # task.formatters = ['html', 'github']
  task.options = ['--format=html', '--out=lint/index.html', '--format=github', '--fail-level=fatal', '--extra-details', '--display-style-guide']
  task.requires << 'rubocop-minitest'
  task.requires << 'rubocop-performance'
  task.verbose = true
end


Minitest::TestTask.create(:test) do |t|
  t.libs << 'lib'
  t.libs << 'src'
  t.warning = false
  # t.test_prelude = 'require "test/test_helper"'
  t.test_globs = ['test/**/*_test.rb']
  # t.requires << 'test/test_helper.rb'

  t.verbose = true
end

task :spec do
  sh 'cucumber --verbose --format html --out spec/spec.html'
end

# task :test do
#   sh 'echo "--------------------------------------------------------------------"'
#   sh 'COVERAGE=true rake tdd'
#   sh 'echo "--------------------------------------------------------------------"'
#   sh 'ls -faln '
# end


task default: :test
