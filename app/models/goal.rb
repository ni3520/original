class Goal < ApplicationRecord
  validates :title, presence: true

  belong_to :user
end
