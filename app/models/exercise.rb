class Exercise < ApplicationRecord
validates :name, presence:true

belongs_to :users
end
