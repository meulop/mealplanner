class MealPlansController < ApplicationController
  def index
    @meal_plans = MealPlan.order(:date).where(date: (Date.today - 7)..(Date.today + 7))
  end
  def show
    @meal_plan = MealPlan.find(params[:id])
  end

  def new
   logger.debug(params)
   @meal_id = params[:format]
   @meal_plan = MealPlan.new
  end

  def create
    @meal_plan = MealPlan.new(meal_plan_params)
    if @meal_plan.save
#      redirect_to :action => 'meal_plans#show', :id => @meal_plan.id
       redirect_to '/'
    else
      render 'meal_plan#new'
    end
  end

  def edit
    @meal_plan = MealPlan.find(params[:id])
    @meal_id = @meal_plan.meal.id
  end

  private
  def meal_plan_params
    params.require(:meal_plan).permit(:meal_id, :date)
  end

end
