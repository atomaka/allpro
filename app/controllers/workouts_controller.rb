class WorkoutsController < ApplicationController
  def index
    @workouts = Workout.all
  end

  def show
    @workout = Workout.find(params[:id])
  end

  def edit
    @workout = Workout.find(params[:id])
  end

  def update
    params.permit!
    @workout = Workout.find(params[:id])

    if @workout.update_attributes(params[:workout])
      redirect_to @workout, notice: 'Workout updated'
    else
      render action: 'edit'
    end
  end

  def new
    @workout = Workout.new
  end

  def create
    params.permit!
    @workout = Workout.new(params[:workout])

    if @workout.save
      redirect_to @workout, notice: 'Workout created'
    else
      render action: 'new'
    end
  end

  def destroy
    @workout = Workout.find(params[:id])
    @workout.destroy

    redirect_to workouts_url, notice: 'Workout deleted'
  end
end
