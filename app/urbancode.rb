# These code snippets use an open-source library. http://unirest.io/ruby
require "httparty"
  headers = {
    "X-Mashape-Key" => "BItDOJDKNimshkA36buKSly7zuRnp1hVcpTjsnANG0iLxstQew",
    "Accept" => "text/plain"
  }

response = HTTParty.get "https://mashape-community-urban-dictionary.p.mashape.com/define?term=wat", headers: headers

p JSON.parse(response.body)
