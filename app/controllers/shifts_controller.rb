class ShiftsController < ApplicationController
  def shift_params
    params.require(:shift).permit(:date, :start, :finish, :break_length)
  end

  def index
    @shifts = Shift.all
  end

  def new
    if @user.organisation_id
      @shift = Shift.new
    else
      redirect_to shifts_path
    end
  end

  def create
    date = shift_params[:date]
    @shift = Shift.create(user_id: current_user.id, start:start_datetime, finish: finish_datetime, break_length: shift_params[:break_length])
    if @shift.save
      redirect_to shifts_path
    end
  end

  def edit
    @shift = Shift.find(params[:id])
  end

  def update
    date = shift_params[:date]
    @shift = Shift.update(params[:id], start: start_datetime, finish: finish_datetime, break_length: shift_params[:break_length])
    redirect_to shifts_path
  end

  def destroy
    Shift.destroy(params[:id])
    redirect_to shifts_path
  end

  private

  def shift_length(start, finish)
    if start.before? finish
      (finish - start) / 60
    end
  end
end
