require 'net/http'
require 'open-uri'
require 'json'
require 'pry'

class GetRequester 
  
  def initialize(url) # initializes with a URL 
    @URL = url 
  end 
  
  URL = "https://learn-co-curriculum.github.io/json-site-example/endpoints/people.json"
  
 def get_response_body
   uri = URI.parse(@URL)
   response = NET::HTTP.get_response(uri)
   response.body 
 end 
  
end
