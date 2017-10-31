class GithubController < ApplicationController
  def index
    @word = params[:word]
    headers = {
      "X-Mashape-Key" => "BItDOJDKNimshkA36buKSly7zuRnp1hVcpTjsnANG0iLxstQew",
      "Accept" => "text/plain"
    }

  response = HTTParty.get "https://mashape-community-urban-dictionary.p.mashape.com/define?term=#{@word}", headers: headers
  @res = JSON.parse(response.body)
  end

  def username
  end
end
