class ReadingsController < ApplicationController
  before_action :set_spread, only: [:create]
  before_action :set_deck

  def new
    @reading = Reading.new
    @spread = Spread.includes(:slots).find(params[:spread_id])
  end

  def create
    @reading = Reading.new(spread: @spread, user: current_user)
    @spread.slots.each do |slot|
      @reading.slots << Slot.new(slottable: @reading, name: slot.name, card: Card.find_by(id: params[:reading][slot.name.to_sym]))
    end
    if @reading.save
      redirect_to root_path, notice: "Reading entered successfully."
    else
      render 'new', alert: "Something went wrong, please try again"
    end
  end

  private
  def set_deck
    @deck = Deck.includes(:cards).first
  end

  def set_spread
    @spread = Spread.find(params[:spread_id])
  end
end
