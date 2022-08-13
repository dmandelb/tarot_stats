class SlotsController < ApplicationController
  before_action :set_spread, only: [:new, :create]

  def new
    @slot = Slot.new
  end

  def create
    @slot = Slot.new(slottable: @spread, name: params[:name])
    if @slot.save
      if params[:save_and_finish]
        redirect_to @spread
      else
        redirect_to new_spread_slot_path(@spread)
      end
    else
      render action: 'new'
    end
  end

  def destroy
    Slot.find(params[:id]).destroy
    redirect_to @spread
  end

  private
  def set_spread
    @spread = Spread.find(params[:spread_id])
  end
end
