require 'minitest/test_task'
require 'rubygems'

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

task :coverage do
  sh 'echo "--------------------------------------------------------------------"'
  sh 'COVERAGE=true rake test'
  sh 'echo "--------------------------------------------------------------------"'
end

task :test do
  Rake::Task['tdd'].invoke
  Rake::Task['bdd'].invoke
  Rake::Task['sdd'].invoke
end

task default: :test
