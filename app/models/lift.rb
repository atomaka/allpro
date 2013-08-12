class Lift < ActiveRecord::Base
  belongs_to :workout

  LIFTS = [:sqaut, :benchpress, :bentoverrow, :overheadpress,
    :straightlegdeadlift, :uprightrow, :calfraise ]
  validates_inclusion_of :lift, :in => Lift::LIFTS
end
