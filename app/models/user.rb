class User < ApplicationRecord
has_secure_password

validates :username, presence:true, uniqueness:true
validates :username, length: { mininum:5}

has_many :workouts
has_many :exercises

end
