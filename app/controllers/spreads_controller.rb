class SpreadsController < ApplicationController

  def index
    @spreads = current_user.spreads
  end

  def show
    @spread = Spread.includes(:slots).find(params[:id])
    # @slots = @spread.slots
  end
end
