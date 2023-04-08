require 'rubygems'
require 'minitest/test_task'

Minitest::TestTask.create # named test, sensible defaults

task :lint do
  sh `rubocop -f html -o lint.html -f github --fail-level F --color -c .rubocop.yml -E -S -D -V`
end


Minitest::TestTask.create(:tdd) do |t|
  t.libs << 'test'
  t.libs << 'lib'
  t.warning = false
  # t.test_prelude = 'require_relative "lib/coverage"'
  t.test_globs = ['test/**/*_test.rb']
  t.verbose = true
end

task :bdd do
  sh ' cucumber  --verbose '
end

task :sdd do
  sh 'echo "under conmstruction" '
end

task :test do
  sh 'echo "--------------------------------------------------------------------"'
  sh 'COVERAGE=true rake tdd'
  sh 'echo "--------------------------------------------------------------------"'
end


task default: :test
