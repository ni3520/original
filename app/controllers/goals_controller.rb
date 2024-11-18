class GoalsController < ApplicationController

  def index
    @goals = current_user.goals.includes(:user)
  end

  def new
    @goal = Goal.new
  end

  def create
    @goal = current_user.goals.build(goal_params)
    if @goal.save
      redirect_to goals_path
    else
      render :new
    end
  end

  def show
    @goal = current_user.goals.find(params[:id])
  end

  private

  def goal_params
    params.require(:goal).permit(:title, :level_1_value, :level_2_value, :level_3_value)
  end
end
