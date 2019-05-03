require 'sinatra'
require 'json'
require 'pry'

USERS = [
 { name: "xuorig", test: true },
 { name: "aUser", test: true },
 { name: "anotherUser", test: true },
 { name: "testUser", test: true },
 { name: "envoyUser", test: true }
]

set :port, 5001

get '/users' do
  request.logger.info("Was xuorig here: #{request.env["HTTP_XUORIG_WAS_HERE"]}")

  content_type :json
  { users: USERS }.to_json
end


