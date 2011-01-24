class GearController < ApplicationController
  respond_to :js

  def new
    respond_with(@gear = Gear.new, :location => :back)
  end
end
