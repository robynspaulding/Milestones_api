# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


#_______________ User __________________

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
#_______________ Family Tree __________________
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
#_______________ Kid __________________
Kid.create(
  user_id: 1,
  name: "Ember Harris",
  birthday: "10/12/2018",
  image_url: "https://www.pngkit.com/png/detail/155-1550510_-kids-clip-art-page-borders-frame-clipart.png" 
)

Kid.create(
  user_id: 1,
  name: "Alex Harris",
  birthday: "05/23/2020",
  image_url: "https://static.vecteezy.com/system/resources/previews/005/253/734/non_2x/isolated-cute-baby-boy-clipart-design-vector.jpg" 
)

Kid.create(
  user_id: 2,
  name: "Vera Martin",
  birthday: "12/24/2017",
  image_url: "https://thumbs.dreamstime.com/b/beautiful-african-american-girl-wearing-green-dress-red-jacket-black-curly-cute-girl-holds-christmas-gift-box-christmas-girl-224744768.jpg" 
)

Kid.create(
  user_id: 2,
  name: "Dawn Martin",
  birthday: "10/12/2020",
  image_url: "https://i.pinimg.com/474x/2c/b7/64/2cb764eae01fd29015b5da8b63638ad1.jpg" 
)

#_______________ Milestone __________________


#_______________ Photo __________________
