require 'rubygems'
require 'rubocop/rake_task'
require 'minitest/test_task'

Minitest::TestTask.create # named test, sensible defaults

# task :lint do
#   sh `rubocop -f html -o lint.html --fail-level F -c .rubocop.yml -E 2> /dev/null`
# end

RuboCop::RakeTask.new(:lint) do |task|
  # task.formatters = ['html', 'github']
  task.options = ['--format=html', '--out=lint.html', '--format=github', '--extra-details', '--display-style-guide']
  task.requires << 'rubocop-minitest'
  task.requires << 'rubocop-performance'
  task.verbose = true
end


Minitest::TestTask.create(:test) do |t|
  t.libs << 'test'
  t.libs << 'lib'
  t.libs << 'src'
  t.warning = false
  t.test_prelude = 'require "lib/coverage"'
  t.test_globs = ['test/**/*_test.rb']
  t.verbose = true
end

task :spec do
  sh ' cucumber --verbose '
end

# task :test do
#   sh 'echo "--------------------------------------------------------------------"'
#   sh 'COVERAGE=true rake tdd'
#   sh 'echo "--------------------------------------------------------------------"'
#   sh 'ls -faln '
# end


task default: :test
