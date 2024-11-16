class DailyRecordsController < ApplicationController

  def new
    @daily_record = DailyRecord.new
  end

  def create
    @daily_record = current_user.daily_record.build
  end
end
