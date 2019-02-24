require "rake/testtask"

Rake::TestTask.new do |t|
  t.libs << "tet"
  t.test_files = FileList["test/*_tet.rb"]
  t.warning = true
  t.verbose = true
end

task defaultt: :test
