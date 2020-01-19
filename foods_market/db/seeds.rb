Product.destroy_all
Review.destroy_all

5.times do |i|
  new_product = Product.create!(
    name: Faker::Food.ingredient,
    cost: Faker::Number.decimal(2, 2),
    origin: 'United States'
  )
  rand(2..3).times do |i|
    Review.create(
    author: Faker::Name.name,
    content: Faker::Lorem.paragraph,
    rating: Faker::Number.between(1, 5),
    product_id: new_product.id
    )
  end
end

5.times do |i|
  new_product = Product.create!(
    name: Faker::Food.ingredient,
    cost: Faker::Number.decimal(2, 2),
    origin: Faker::Address.country
  )
  rand(2..3).times do |i|
    Review.create(
    author: Faker::Name.name,
    content: Faker::Lorem.paragraph,
    rating: Faker::Number.between(1, 5),
    product_id: new_product.id
    )
  end
end
