# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Country.create(name: 'Ukraine')
Category.create(name: 'Закуски')
Category.first.dishes.create(name: 'Бутерброд', description: 'Берем хлеб и сало. Совмещаем', country_id: 1)
Ingredient.create(name: 'Хлеб')
Ingredient.create(name: 'Сало')
DishDetail.create(dish_id: 1, ingredient_id: 1)
DishDetail.create(dish_id: 1, ingredient_id: 2)

