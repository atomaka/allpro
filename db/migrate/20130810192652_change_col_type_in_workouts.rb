class ChangeColTypeInWorkouts < ActiveRecord::Migration
  def self.up
    rename_column :workouts, :type, :day_type
  end

  def self.down
    rename_column :workouts, :day_type, :type
  end
end
