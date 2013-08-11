class ChangeDayTypeInWorkotus < ActiveRecord::Migration
  def self.up
    change_column_default :workouts, :day_type, 'heavy'
  end

  def self.down
    change_column_default :workouts, :day_type, 'Heavy'
  end
end
