class SlotsController < ApplicationController

  def destroy
    Slot.find(params[:id]).destroy
    redirect_to Spread.find(params[:spread_id])
  end
end
