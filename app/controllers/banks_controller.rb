class BanksController < ApplicationController

  def index
    @banks = Bank.where("created_at >= ?", Time.now.beginning_of_day)
  end

  def show
    @bank = Bank.find(params[:id])
  end
end