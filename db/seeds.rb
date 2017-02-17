# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
1 = Ingredient.create(name: "lemon")
2 = Ingredient.create(name: "ice")
3 = Ingredient.create(name: "mint leaves")
1.save
2.save
3.save
