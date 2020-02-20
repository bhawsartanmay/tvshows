class ShowsController < ApplicationController
  before_action :set_show, only: [:favorite]

  def favorite
    if params[:fav] == "true"
      @show.update(favorite: true)
    elsif
      @show.update(favorite: false)
    end
    redirect_to :root
  end

 private

 def set_show
   @show = Show.find(params[:show_id])
 end

end
