class SpreadsController < ApplicationController
  before_action :authenticate_user!

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
end
