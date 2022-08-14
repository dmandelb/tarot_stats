class SpreadsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_spread, only: [:edit, :update, :destroy]

  def index
    @spreads = current_user.spreads
  end

  def show
    @spread = Spread.includes(:slots).find(params[:id])
  end

  def new
    @spread = Spread.new
  end

  def create
    @spread = Spread.create(name: params[:spread][:name], user: current_user)
    redirect_to new_spread_slot_path(@spread)
  end

  def edit
  end

  def update
    @spread.update(spread_params)
    redirect_to @spread
  end

  def destroy
    @spread.destroy
    redirect_to spreads_path
  end

  private
  def spread_params
    params.require(:spread).permit(:name)
  end
  def set_spread
    @spread = Spread.find(params[:id])
  end
end
