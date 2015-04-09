class HomeController < ApplicationController
  def index
    @sites = Site.order(:url)
  end
end
