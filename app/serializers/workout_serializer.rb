class WorkoutSerializer < ActiveModel::Serializer
  attributes :id, :type, :description, :duration, :user_id
end
