class UsersController < ApplicationController
  def index
    @users = User.all

    array = ["Keanu", "Morpheus", "Trinity"]
  
    respond_to do |format|
      format.html { render html: "Strongly Matrix 4" }
      format.json { render json: array }
    end
  end

  def create
    @user = User.new(user_params)
    if @user.save
      render json: @user
    else
      render json: @user.errors
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

  def user_params
    params.require(:user).permit(:name)
  end 
end
