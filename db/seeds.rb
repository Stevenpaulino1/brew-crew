# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Brew.destroy_all
Customer.destroy_all
Purchase.destroy_all

5.times do
  Brew.create(
    blend_name: Faker::Coffee.blend_name,
    origin: Faker::Coffee.origin,
    notes: Faker::Coffee.notes,
    strength: rand(1..5)
  )
end

Customer.create(name:"Jane Costa", occupation:"Rockstar")
Customer.create(name:"Steven",occupation: "FSD")
Customer.create(name:"Eric",occupation: "snacker")

Purchase.create(customer_id: Customer.all.sample, brew_id: Brew.all.sample, size: "Small")
Purchase.create(customer_id: Customer.all.sample, brew_id: Brew.all.sample, size: "Small")
Purchase.create(customer_id: Customer.all.sample, brew_id: Brew.all.sample, size: "Medium")
Purchase.create(customer_id: Customer.all.sample, brew_id: Brew.all.sample, size: "Large")
