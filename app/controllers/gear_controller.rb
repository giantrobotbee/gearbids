class GearController < ApplicationController
  respond_to :js

  def new
    respond_with(@gear = Gear.new, :location => :back)
  end

  def create
    @gear = Gear.new params[:gear]
    @gear.save
    respond_with(@gear)
  end
end
