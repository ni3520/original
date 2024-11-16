class GoalsController < ApplicationController

  def index
    @goals = Goal.includes(:user)
  end

  def new
    @goal = Goal.new
  end

  def create
    @goal = current_user.goals.build(goal_params)
    if @goal.save
      redirect_to goals_path
    else
      puts @goal.errors.full_messages # エラーを出力
      render :new
    end
  end

  private

  def goal_params
    params.require(:goal).permit(:title, :level_1_value, :level_2_value, :level_3_value)
  end
end
