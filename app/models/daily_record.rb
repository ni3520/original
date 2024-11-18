class DailyRecord < ApplicationRecord
  belongs_to :user
  belongs_to :goal

  validates :record_date, presence: true
end
