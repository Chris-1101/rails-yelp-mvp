# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Faker::Config.locale = 'en-GB'
categories = ["chinese", "italian", "japanese", "french", "belgian"]

5.times do
  Restaurant.create(
    name: Faker::HeyArnold.location,
    address: Faker::Address.full_address,
    category: categories[rand(5)],
    phone_number: Faker::PhoneNumber.cell_phone
  )
end
