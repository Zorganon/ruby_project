# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


products = Product.create([{ name: "Existentialism", description: "Who we are is strictly defined by our decisions and actions, not hypotheticals.", image_url: "existentialism.jpg", price: 900 },
  { name: "Hippy", description: "Love is the purpose of life... and drugs", image_url: "hippy35.gif", price: 35 },
  { name: "Absurdism", description: "We must accept the absurdity of life, before we can assign meaning", image_url: "absurd.jpg", price: 299 },
  { name: "Nihilism", description: "The universe is so vast it is impossible for life to have meaning", image_url: "nihilism.jpg", price: 900 },
  { name: "New Age", description: "The Crystals will purify your life energies!", image_url: "new_age.jpg", price: 5999 }])
  
users = User.create([{ first_name: "Admin", last_name: "User", email: "dan.the.hudson@gmail.com", admin: true }])