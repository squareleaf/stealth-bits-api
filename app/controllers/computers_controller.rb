class ComputersController < ApplicationController
  def index
    page = params[:page] || 1
    @computers = HTTParty.get("https://sb-backendapi.azurewebsites.net/api/Computers?per_page=10&page=#{page}")
  end

  def show
    id = params[:id]
    @computer = HTTParty.get("https://sb-backendapi.azurewebsites.net/api/Computers/#{id}")
  end
end
