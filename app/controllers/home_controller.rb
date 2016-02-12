require "#{Rails.root}/lib/apis/itunes"

class HomeController < ApplicationController
  def index
  end

  def search
  	@results = ApiRailsExample::ITunes.search(params[:query])
  	render 'index'
  end
end
