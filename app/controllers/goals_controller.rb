class GoalsController < ApplicationController

  def index
    @goals = Goal.includes(:user)
  end

  def new
    @goal = Goal.new
  end

  def create
    @goal = Goal.new(goal_params)
    if @goal.save
      redirect_to goals_path
    else
      render :new
    end
  end

  private

  def goal_params
    params.require(:goal).permit(:title, :level_1_value, :level_2_value, :level_3_value)
  end
end
