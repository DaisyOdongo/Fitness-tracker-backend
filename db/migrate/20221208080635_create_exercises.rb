class CreateExercises < ActiveRecord::Migration[7.0]
  def change
    create_table :exercises do |t|
      t.string :name
      t.string :type
      t.integer :sets
      t.integer :weight
      t.integer :duration
      t.integer :user_id

      t.timestamps
    end
  end
end
