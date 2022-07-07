class SpreadsController < ApplicationController

  def index
    @spreads = Spread.all
  end
end
