require 'spec_helper'

describe "Workouts" do
  before :all do
    @workout = FactoryGirl.create(:workout)
  end

  describe "GET /workouts" do
    it "should return 200" do 
      visit workouts_path
      page.status_code.should be 200
    end

    it "should return workouts" do
      visit workouts_path
      page.should have_content @workout.date
    end
  end
end
