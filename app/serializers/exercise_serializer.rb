class ExerciseSerializer < ActiveModel::Serializer
  attributes :id, :name, :type, :sets, :weight, :duration, :user_id
end
