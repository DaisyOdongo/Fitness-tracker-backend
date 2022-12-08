class ExerciseSerializer < ActiveModel::Serializer
  attributes :id, :name, :sets, :weight, :workout_id
end
