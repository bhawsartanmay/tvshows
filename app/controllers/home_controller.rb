class HomeController < ApplicationController
  def index
    @shows = Show.all
  end

  def search
    query = params[:q]
    @channels = Channel.where('name LIKE ?', "%#{query}%")
    @shows = Show.where('name LIKE ?', "%#{query}%")
  end
end
