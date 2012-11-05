require 'rubygems'
require 'sinatra'

before do
  # Strip the last / from the path
  request.env['PATH_INFO'].gsub!(/\/$/, '')
end

get '' do
   "Hello world"
end