class DailyRecordsController < ApplicationController

  def new
    @daily_record = DailyRecord.new
  end

  def create
    @daily_record = current_user.daily_record.build(daily_record_params)
    if @daily_record.save
      redirect_to goal_path(goal)
    else
      render :new
    end
  end

  private

  def daily_record_params
    params.require(:daily_record).permit(:level_achieved,:memo, :record_date)
  end
end
