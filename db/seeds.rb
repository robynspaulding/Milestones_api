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
Milestone.create(
  kid_id: 1,
  milestone_title: "Sitting up",
  date: "01/12/2019",
  description: "Ember can sit up on her own now!",
  image_url: "https://cdn.vectorstock.com/i/preview-1x/82/46/joyful-baby-girl-with-cubes-semi-flat-color-vector-43768246.webp"
  )
Milestone.create(
  kid_id: 1,
  milestone_title: "Crawling",
  date: "03/29/2019",
  description: "Ember crawled for the first time today",
  image_url: "https://cdn.vectorstock.com/i/preview-1x/18/75/baby-girl-cartoon-flat-style-isolated-on-white-vector-44961875.webp"
  )
Milestone.create(
  kid_id: 2,
  milestone_title: "First Smile",
  date: "09/02/2020",
  description: "Alex showed us his smile today, we were playing Peek-a-boo and he smiled so big!",
  image_url: "https://cdn.vectorstock.com/i/preview-1x/76/12/cute-cartoon-baby-boy-in-a-cap-vector-22897612.webp"
  )
Milestone.create(
  kid_id: 2,
  milestone_title: "Said Mama",
  date: "04/13/2021",
  description: "Alex said Mama today while he was playing with books!",
  image_url: "https://cdn.vectorstock.com/i/preview-1x/89/18/cute-batalking-vector-31078918.webp"
  )
Milestone.create(
  kid_id: 3,
  milestone_title: "First Steps",
  date: "10/21/2018",
  description: "Vera took her first steps today with Daddy! they wer playing with her favorite toy and she let go of the couch and walked to him to get it!",
  image_url: "https://cdn.vectorstock.com/i/1000x1000/99/46/bafirst-steps-vector-38289946.webp"
  )
Milestone.create(
  kid_id: 3,
  milestone_title: "First day of Daycare",
  date: "08/01/2020",
  description: "Vera had her first day of daycare today!",
  image_url: "https://cdn.vectorstock.com/i/1000x1000/34/48/daycare-activities-vector-38743448.webp"
  )
Milestone.create(
  kid_id: 4,
  milestone_title: "Rolled Over",
  date: "01/22/2021",
  description: "Dawn rolled over for the first time after trying for the last three days! She's getting so big!",
  image_url: "https://cdn.vectorstock.com/i/preview-1x/20/02/cute-newborn-baby-lying-on-floor-and-playing-vector-45272002.webp"
  )
Milestone.create(
  kid_id: 4,
  milestone_title: "First laugh",
  date: "2/15/2021",
  description: "Dawn had her first big laugh today, she thought it was hilarious when Vera threw blankets on her",
  image_url: "https://cdn.vectorstock.com/i/preview-1x/74/29/happy-baby-laughing-out-loud-cartoon-vector-44667429.webp"
  )
  #_______________ Photo __________________
Photo.create(
  user_id: 1,
  kid_id: 1,
  date: "03/21/2018",
  description: "Vacation in Hawaii",
  image_url: "https://images.all-free-download.com/images/graphicwebp/hawaii_banner_tourist_enjoy_cocktail_icon_cartoon_design_6839429.webp"
)

Photo.create(
  user_id: 1,
  kid_id: 1,
  date: "05/17/2018",
  description: "Family reunion in Sacramento, CA",
  image_url: "https://thumbs.dreamstime.com/b/portrait-big-happy-family-many-people-different-generations-illustration-cartoon-characters-such-as-son-father-newborn-202618012.jpg"
)

Photo.create(
  user_id: 2,
  kid_id: 3,
  date: "06/19/2019",
  description: "Championship game for the Tigers basketball team",
  image_url: " https://thumbs.dreamstime.com/b/vector-illustration-kids-playing-basketball-team-game-competition-130313447.jpg"
)

Photo.create(
  user_id: 2,
  kid_id: 3,
  date: "08/30/2019",
  description: "Me and my love",
  image_url: "https://static.vecteezy.com/system/resources/thumbnails/000/175/121/small_2x/People_In_Love_Vector.jpg"
)