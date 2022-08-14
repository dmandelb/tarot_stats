class SlotsController < ApplicationController
  before_action :set_spread, only: [:new, :create, :edit, :update]
  before_action :set_slot, only: [:edit, :update, :destroy]

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

  def edit
  end

  def update
    @slot.update(name: params[:name])
    redirect_to @spread
  end

  def destroy
    @slot.delete
    redirect_to root_path
  end

  private
  def set_spread
    @spread = Spread.find(params[:spread_id])
  end

  def set_slot
    @slot = Slot.find(params[:id])
  end
end
