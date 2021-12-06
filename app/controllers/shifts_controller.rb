class ShiftsController < ApplicationController
  def index
    @shift = Shift.new
  end

  def edit
    @shift = Shift.find(params[:id])
  end
end
