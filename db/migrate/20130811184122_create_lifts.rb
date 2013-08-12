class CreateLifts < ActiveRecord::Migration
  def change
    create_table :lifts do |t|
      t.integer :parent_workout
      t.string :lift_type
      t.integer :sets
      t.integer :repititions
      t.text :comment

      t.timestamps
    end
  end
end
