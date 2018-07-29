class UsersController < ApplicationController
  def index
    @users = HTTParty.get('https://sb-backendapi.azurewebsites.net/api/Users')
  end

  def show

  end
end
