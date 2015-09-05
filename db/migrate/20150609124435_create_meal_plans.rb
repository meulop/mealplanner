class CreateMealPlans < ActiveRecord::Migration
  def change
    create_table :meal_plans do |t|
      t.date       :date
      t.references :meal
      t.timestamps
    end
  end
end
