class CreateWorkouts < ActiveRecord::Migration[7.0]
  def change
    create_table :workouts do |t|
      t.string :type
      t.string :description
      t.time :duration
      t.integer :user_id

      t.timestamps
    end
  end
end
