class ComputersController < ApplicationController
  def index
    @computers = HTTParty.get('https://sb-backendapi.azurewebsites.net/api/Computers').paginate(per_page: 10, page: filter_params[:page] || 1)
  end

  def show

  end
end
