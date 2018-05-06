# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do |artist|
  Artist.create!(
    email: "artist#{artist}@example.com",
    password: "password",
    password_confirmation: "password",
    name: "Artist #{artist}",
    roles: "artist"
  )
end

puts "10 artists created"

Artist.create!(
  email: "admin@example.com",
  password: "password",
  password_confirmation: "password",
  name: "Admin Admin",
  roles: "site_admin"
)

puts "1 admin created"