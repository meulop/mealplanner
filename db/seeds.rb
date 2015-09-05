# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

bp = Meal.create(name: "Bacon Pasta")
sc = Meal.create(name: "Steak and Chips")

MealPlan.create(date: DateTime.new(2015,06,07), meal: sc)
