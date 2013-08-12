class Workout < ActiveRecord::Base
  has_many :lifts, dependent: :destroy

  DAY_TYPES = [:heavy, :medium, :light ]
  validates_date :date
  validates_inclusion_of :day_type, :in => Workout::DAY_TYPES

  def day_type
    read_attribute(:day_type).to_sym
  end

  def day_type=(value)
    write_attribute(:day_type, value.to_s)
  end
end
