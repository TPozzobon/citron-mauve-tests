class UsersController < ApplicationController
  def index
    array = ["Keanu", "Morpheus", "Trinity"]
  
    respond_to do |format|
      format.html { render html: "Strongly Matrix 4" }
      format.json { render json: array }
    end
  end

  def import
    uri = "https://jsonplaceholder.typicode.com/users"
    content = callApi(uri)
    user = JSON.parse(content)
    user.first()["name"]
  end

  private

  def callApi(uri)
    Net::HTTP.get(URI.parse(uri))
  end
end
