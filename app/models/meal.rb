class Meal < ActiveRecord::Base
  has_many :meal_plans
end
