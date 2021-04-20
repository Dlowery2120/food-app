User.destroy_all
Cuisine.destroy_all
Ingredient.destroy_all
Recipe.destroy_all
Review.destroy_all


require 'faker'

10.times do
    name = Faker::Name.unique.name
    User.create(name: name)
end

c1 = Cuisine.create(cuisine_type: "Thai")
c2 = Cuisine.create(cuisine_type: "Japanese")
c3 = Cuisine.create(cuisine_type: "Italian")
c4 = Cuisine.create(cuisine_type: "Indian")
c5 = Cuisine.create(cuisine_type: "Moroccan")
c6 = Cuisine.create(cuisine_type: "French")
c7 = Cuisine.create(cuisine_type: "Turkish")
c8 = Cuisine.create(cuisine_type: "Mexican")
c9 = Cuisine.create(cuisine_type: "Chinese")
c10 = Cuisine.create(cuisine_type: "Nigerian")

10.times do
    name = Faker::Food.ingredient
    Ingredient.create(name: name)
end

10.times do
    name = Faker::Food.dish
    instructions = Faker::Food.description
    cuisine_id = rand(1..10)
    ingredient_id = rand(1..10)
    Recipe.create(name: name, image_url: 'https://images.unsplash.com/photo-1455619452474-d2be8b1e70cd?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80', instructions: instructions, cuisine_id: cuisine_id , ingredient_id: ingredient_id )
end

10.times do
    comment = Faker::Restaurant.review
    rating = rand(1..10)
    user_id = rand(1..10)
    recipe_id = rand(1..10)
    Review.create(rating: rating, comment: comment, user_id: user_id, recipe_id: recipe_id)
end















