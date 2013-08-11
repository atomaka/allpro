class Workout < ActiveRecord::Base
  DAY_TYPES = %w(heavy medium light)
  validates_date :date
  validates_inclusion_of :day_type, :in => Workout::DAY_TYPES
end
