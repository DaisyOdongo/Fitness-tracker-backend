class User < ApplicationRecord
has_secure_password

validates :username, presence:true, uniqueness:true
validates :username, length: { mininum:5}
#validates :password_digest, presence: true

has_many :workouts
has_many :exercises

end
