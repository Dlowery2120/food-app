Meal.destroy_all
Recipe.destroy_all
Ingredient.destroy_all

require 'faker'

10.times do
    Ingredient.create({
        name: Faker::Food.ingredient
    })
end

10.times do
    Recipe.create({
        instructions: Faker::Food.description
})
end

10.times do
    Meal.create({
        name: Faker::Food.dish,
        image: 'https://images.unsplash.com/photo-1455619452474-d2be8b1e70cd?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80',
        recipe_id: Recipe.first.id,
        ingredient_id: Ingredient.first.id
    })
end