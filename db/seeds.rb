# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Account.create([
  { username: "Jhon", first_name: "Jhon", last_name: "Cna", email: "jhon@example.com", password: "jhon123"},
  { username: "Rock", first_name: "Rock", last_name: "Moe", email: "rock@example.com", password: "rock123"},
  { username: "Kitty", first_name: "Kitty", last_name: "Ace", email: "kitty@example.com", password: "kitty123"}
])