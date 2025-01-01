class DailyRecordsController < ApplicationController
  before_action :set_goal, only: [:new, :create]

  def new
    @goal = current_user.goals.find(params[:goal_id])
    @daily_record = DailyRecord.new(goal: @goal, record_date: Date.today)
  end

  def create
    @daily_record = current_user.daily_records.build(daily_record_params)
    @daily_record.goal = @goal

    if @daily_record.save
      redirect_to goal_path(@daily_record.goal)
    else
      render :new
    end
  end

  private

  def set_goal
    @goal = current_user.goals.find(params[:goal_id])
  end

  def daily_record_params
    params.require(:daily_record).permit(:goal_id, :memo, :record_date, :level_achieved)
  end
end
