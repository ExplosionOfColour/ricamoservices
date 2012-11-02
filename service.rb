require 'json'
require 'sinatra'

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