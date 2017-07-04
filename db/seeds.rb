# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!(name:  "hiwil",
             email: "hellowil@hotmail.com",
             password:              "111111",
             password_confirmation: "111111",
             admin: true,
             activated: true,
             activated_at: Time.zone.now)

User.create!(name:  "lujucan",
             email: "670316658@qq.com",
             password:              "111111",
             password_confirmation: "111111",
             activated: true,
             admin: true,
             activated_at: Time.zone.now)

User.create!(name:  "hxmusic",
             email: "hxmusic@foxmail.com",
             password:              "111111",
             password_confirmation: "111111",
             activated: true,
             admin: true,
             activated_at: Time.zone.now)


#users = User.order(:created_at).take(2)

#5.times do
#  name = Faker::Lorem.sentence(5)
#  summary = Faker::Lorem.sentence(5)
#  coverimg = "logo.png"
#  users.each { |user| user.albums.create!(name: name,summary: summary,coverimg: coverimg)}
#end
  
