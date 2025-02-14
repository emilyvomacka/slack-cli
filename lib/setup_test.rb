require 'httparty'
require 'dotenv'
Dotenv.load

url = "https://slack.com/api/channels.list?"

query_parameters = {
  token: ENV['SLACK_TOKEN']
}

response = HTTParty.get(url, query: query_parameters)

response["channels"].each do |channel|
  puts "This channel is called #{channel["name"]} and has #{channel["num_members"]} members."
end 
