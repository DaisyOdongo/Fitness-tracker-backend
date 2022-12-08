class Workout < ApplicationRecord
  validates :type, presence: true
  validates :description, length: { minimum: 50 }
  validates :duration, length: { minimum: 60 }
    belongs_to :user

end
