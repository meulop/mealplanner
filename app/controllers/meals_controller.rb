class MealsController < ApplicationController
  respond_to :html, :json

  def index
    if params[:err]
      @err = params[:err]
    end
    @meals = Meal.all
    @new_meal = Meal.new
    respond_to do |format|
      format.json { render json: @meals }
    end
  end

  def create
    if !Meal.find_by(name: params[:meal][:name])
      @meal = Meal.new(meal_params)
      if @meal.save
        redirect_to(:action => 'index')
      else
        redirect_to(:action => 'index')
      end
    else
      redirect_to(:action => 'index', :err => "Already exists")
    end
  end

  private
  def meal_params
    params.require(:meal).permit(:name)
  end
end
