class UsersController < ApplicationController
  def index
    page = params[:page] || 1
    @users = HTTParty.get("https://sb-backendapi.azurewebsites.net/api/Users?per_page=10&page=#{page}")
  end

  def show
    id = params[:id]
    @user = HTTParty.get("https://sb-backendapi.azurewebsites.net/api/Users/#{id}")
  end
end
