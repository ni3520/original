class GoalsController < ApplicationController

  def index
    @goals = Goal.includes(:user)
  end
end
