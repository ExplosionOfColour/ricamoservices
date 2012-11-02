ENV['GEM_PATH'] = "#{ENV['HOME']}/gems:/usr/lib/ruby/gems/1.8"
ENV['GEM_HOME'] = "#{ENV['HOME']}/gems"

require 'rubygems'
require 'sinatra'
 
set :environment, :production
disable :run

require File.join(File.dirname(__FILE__), 'RicamoServices')
run Sinatra::Application