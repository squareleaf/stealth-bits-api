class HomeController < ApplicationController
  include HTTParty

  require 'json'

  before_action :fetch_data_from_api

  def index
    @total_computers = get_total_computers
    @total_users = get_total_users
  end

  private

  def fetch_data_from_api
    @computers = HTTParty.get('https://sb-backendapi.azurewebsites.net/api/Computers')
    @users = HTTParty.get('https://sb-backendapi.azurewebsites.net/api/Users')
  end

  def get_total_computers
    @computers.count
  end

  def get_total_users
    @users.count
  end
end
