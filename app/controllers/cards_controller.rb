class CardsController < ApplicationController
  def create
    @card = Card.new(params[:card])
    @card.lane = Lane.open
    @card.save
    render :json => @card
  end
end
