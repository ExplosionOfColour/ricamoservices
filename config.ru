ENV['GEM_PATH'] = "#{ENV['HOME']}/gems:/usr/lib/ruby/gems/1.8"
ENV['GEM_HOME'] = "#{ENV['HOME']}/gems"

require 'ricamoservices'

set :environment, ENV['RACK_ENV'].to_sym
set :app_file,     'ricamo_sinatra.rb'
disable :run

log = File.new("logs/sinatra.log", "a")
STDOUT.reopen(log)
STDERR.reopen(log)

run Sinatra::Application