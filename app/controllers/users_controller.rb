class UsersController < ApplicationController
  def index
    array = ["Keanu", "Morpheus", "Trinity"]
  
    respond_to do |format|
      format.html { render html: "Strongly Matrix 4" }
      format.json { render json: array }
    end
  end
end
