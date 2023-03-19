# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create(
  name: "Isla Harris",
  email: "isla@test.com",
  password: "password",
  password_confirmation: "password"
)

User.create(
  name: "Xavier Martin",
  email: "xavier@test.com",
  password: "password",
  password_confirmation: "password"
)

FamilyTree.create(
  user_id: 1,
  name: "Tom Harris",
  relationship: "Spouse",
  image_url: "https://cdn.vectorstock.com/i/preview-1x/43/69/dad-and-kids-composition-vector-41714369.webp"
)

FamilyTree.create(
  user_id: 1,
  name: "Samantha Tames",
  relationship: "Parent",
  image_url: "https://cdn.vectorstock.com/i/1000x1000/96/14/dancing-with-grandma-vector-6749614.webp"
)

FamilyTree.create(
  user_id: 2,
  name: "Sabrina Martin",
  relationship: "Spouse",
  image_url: "https://cdn.vectorstock.com/i/preview-1x/83/67/mom-and-sun-vector-44958367.webp"
)