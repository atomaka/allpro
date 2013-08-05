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

  describe "GET /workouts/(:id)" do
    it "should visit a workout" do
      visit workouts_path
      click_link @workout.date

      current_path.should == workout_path(@workout.id)
      page.should have_content @workout.date
    end

    it "should return 200" do
      visit "#{workouts_path}/#{@workout.id}"
      page.status_code.should be 200
    end

    it "should return the correct workout" do
      visit "#{workouts_path}/#{@workout.id}"
      page.should have_content @workout.date
    end
  end
end
