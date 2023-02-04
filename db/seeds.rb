require 'pg'
require 'faker'

(1..10).each do |id|
  User.create!(
    id: id,
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: "qwerty",
    password_confirmation: "qwerty",
    phone: Faker::PhoneNumber.cell_phone,
    city: Faker::Address.city,
    zip_code: Faker::Address.zip_code,
    country: Faker::Address.country,
  )
end

(1..10).each do |id|
  Category.create!(
    id: id,
    title: Faker::Commerce.department,
    body: Faker::Lorem.sentence(word_count: 5),
  )
end

(1..30).each do |id|
  Subcategory.create!(
    id: id,
    title: Faker::Commerce.brand,
    category_id: Category.find(rand(1..10)).id,
  )
end

(1..300).each do |id|
  Product.create!(
    id: id,
    body: Faker::Lorem.sentence(word_count: 30),
    title: Faker::Commerce.product_name,
    user_id: User.find(rand(1..10)).id,
    price: Faker::Commerce.price(range: 15..100), 
    quantity: Faker::Commerce.price(range: 2..100), 
    subcategory_id: Subcategory.find(rand(1..30)).id, 
  )
end