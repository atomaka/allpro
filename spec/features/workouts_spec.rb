require 'spec_helper'

describe "Workouts" do
  before :each do
    @workout = FactoryGirl.create(:workout)
  end

  describe "GET /workouts" do
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

    it "should return the correct workout" do
      visit "#{workouts_path}/#{@workout.id}"
      page.should have_content @workout.date
    end
  end

  describe "GET /workouts/(:id)" do
    it "should show the edit form" do
      visit workouts_path
      find("#workout_#{@workout.id}").click_link 'Edit'

      current_path.should == edit_workout_path(@workout)
    end
  end

  describe "PUT /workouts/edit/(:id)" do
    it 'should update a workout' do
      visit workouts_path
      find("#workout_#{@workout.id}").click_link 'Edit'

      fill_in 'Date', :with => Date.today
      click_button 'Update Workout'

      page.should have_content 'Workout updated'
    end

    it "should not edit with bad data" do
      visit workouts_path
      find("#workout_#{@workout.id}").click_link 'Edit'

      fill_in 'Date', :with => '2013-13-13'
      click_button 'Update Workout'

      page.should have_content "Date is not a valid date"
    end
  end

  describe "GET /workouts/new" do
    it "should show the create workout form" do
      visit workouts_path
      click_link 'Create'

      current_path.should == new_workout_path
    end
  end

  describe "POST /workouts/create" do
    it "should create a new workout" do
      visit workouts_path
      click_link 'Create'

      fill_in 'Date', :with => Date.today
      select 'Heavy', :from => 'Day type'
      click_button 'Create Workout'

      page.should have_content 'Workout created'
    end

    it "should have a working javascript datepicker", :js => true do
      visit workouts_path
      click_link 'Create'

      page.execute_script %Q{ $('#workout_date').trigger("focus") }
      page.execute_script %Q{ $("a.ui-state-default:contains('10')").trigger("click") }
      click_button 'Create Workout'

      page.should have_content 'Workout created'
    end

    it "should only accept real dates" do
      visit workouts_path
      click_link 'Create'
      fill_in 'Date', :with => '2013-13-13'
      select 'Heavy', :from => 'Day type'
      click_button 'Create Workout'

      page.should have_content "Date is not a valid date"
    end
  end

  describe "DELETE /workouts/(:id)" do
    it 'should delete a workout' do
      visit workouts_path
      find("#workout_#{@workout.id}").click_link 'Delete'

      page.should have_content 'Workout deleted'
    end
  end
end

