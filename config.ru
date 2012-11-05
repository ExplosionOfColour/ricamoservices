root_dir = File.dirname(__FILE__)
app_file = File.join(root_dir, 'ricamo_sinatra.rb')
require app_file
 
set :environment, :production
# set :environment, ENV['RACK_ENV'].to_sym
set :root,        root_dir
set :app_file,    app_file
disable :run

run Sinatra::Application