class RatesController < ApplicationController

  def index
    @rates = Rate.where("currency >= ?", params[:currency])
  end

  def show
    @rate = Rate.find(params[:id])
  end
end