require 'net/http'
task :database_reset do
  `RAILS_ENV=test rake db:reset`
end

task :start_test_server do
  `rails server -e test -d`
end

task :kill_server do
  d = Dir.new 'tmp/pids/'
  pids = d.entries.reject{|f| ['.', '..'].include? f}
  pids.each do |p|
    pid = `cat tmp/pids/#{p}`
    `kill #{pid}`
  end
end

task :clear_db do
  `RAILS_ENV=test rake db:drop`
  `RAILS_ENV=test rake db:create`
end

task :backgroud_jasmine do
  `rake jasmine > jasmine.out 2>&1 &`
end

task :read_jasmine do
  sleep(2)
  uri = URI('http://localhost:8888/')
  puts Net::HTTP.get(uri)
end

task default: [:spec, :database_reset, :start_test_server, 'protractor:spec', :backgroud_jasmine, :read_jasmine, :kill_server, :clear_db]