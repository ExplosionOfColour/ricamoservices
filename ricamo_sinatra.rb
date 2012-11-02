require 'json'
require 'sinatra'

class RicamoSinatra < Sinatra::Base
  get "/" do
    "Hello Bundler"
  end

chief_complaints = [
  { name: "Dizziness" },
  { name: "Chest Pain" },
]

before /.*/ do
  content_type :json
end

get '/chief_complaints' do
  chief_complaints.to_json
end

end