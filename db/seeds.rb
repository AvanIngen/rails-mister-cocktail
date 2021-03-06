require 'faker'

# starting from here on with ingredients

puts 'Clearing db ingredients'
Ingredient.destroy_all

puts 'creating db ingredients'
10.times do
  ingredient = Ingredient.new(
    name: Faker::Food.ingredient
  )
  ingredient.save
end

puts 'done with ingredients'

# starting from here on with cocktails

puts 'Clearing db cocktails'
Cocktail.destroy_all

puts 'Creating db cocktails'
10.times do
  cocktail = Cocktail.new(
    name: Faker::Food.fruits
  )
  cocktail.save
end

puts 'done with cocktails'

# starting from here on with doses

puts 'Clearing db doses'
Dose.destroy_all

puts 'Creating db doses'
10.times do
  dose = Dose.new(
    description: Faker::Food.measurement
  )
 dose.save
 puts dose.description
end

puts 'done with doses'
