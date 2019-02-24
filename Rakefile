require "rake/testttask"

Rake::TestTask.new do |t|
  t.libs << "tet"
  t.tes_files = FileList["test/*_tet.rb"]
  t.warning = true
  t.verbose = true
end

task defaultt: :test
