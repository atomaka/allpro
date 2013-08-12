class FixAssociationInLifts < ActiveRecord::Migration
  def self.up
    rename_column :lifts, :parent_workout, :workout_id
  end

  def self.down
    rename_column :lifts, :workout_id, :parent_workout
  end
end
