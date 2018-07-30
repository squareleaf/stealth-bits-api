class UsersController < ApplicationController
  def index
    @users = HTTParty.get('https://sb-backendapi.azurewebsites.net/api/Users')
  end

  def show
    id = params[:id]
    @user = HTTParty.get("https://sb-backendapi.azurewebsites.net/api/Users/#{id}")
  end
end
