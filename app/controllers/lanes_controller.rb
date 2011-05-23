class LanesController < ApplicationController
  def index
    @lanes = Lane.all
    render :json => @lanes
  end
end
