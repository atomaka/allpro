class AddFieldsToWorkout < ActiveRecord::Migration
  def self.up
    add_column :workouts, :comment, :text, :null => false, :default => ''
    add_column :workouts, :type, :string, :null => false, :default => 'Heavy'
  end

  def self.down
    remove_column :workouts, :comment
    remove_column :workouts, :type
  end
end
