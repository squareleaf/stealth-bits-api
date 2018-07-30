class ComputersController < ApplicationController
  include Rails::Pagination

  def index
    @computers = HTTParty.get('https://sb-backendapi.azurewebsites.net/api/Computers')
  end

  def show
    id = params[:id]
    @computer = HTTParty.get("https://sb-backendapi.azurewebsites.net/api/Computers/#{id}")
  end
end
