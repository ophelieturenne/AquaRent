# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "open-uri"

puts "starting seeding"

puts "cleaning database"

Booking.destroy_all
Material.destroy_all
<<<<<<< HEAD
User.destroy_all
Category.destroy_all

=======
Category.destroy_all
User.destroy_all
>>>>>>> 8bbf6ea4138913ed0b58ffb753e42930dd7fb39f


puts "creating categories"
category1 = Category.new(name: "Boards")
category2 = Category.new(name: "Sailings")
category3 = Category.new(name: "Others")




category1.save
category2.save
category3.save


puts "creating materials"

file = URI.open("https://res.cloudinary.com/dvp1v2dej/image/upload/v1665561920/aquarent/canoe_zooayz.jpg")
material = Material.new(name: "Canoe", price: 600, category: category1)
material.photo.attach(io: file, filename: "canoe.png", content_type: "image/png")
material.save


file = URI.open("https://res.cloudinary.com/dvp1v2dej/image/upload/v1665561894/aquarent/fly_board_ebz8wv.jpg")
material1 = Material.new(name: "Fly board", price: 600, category: category1)
material1.photo.attach(io: file, filename: "fly_board.png", content_type: "image/png")
material1.save

file = URI.open("https://res.cloudinary.com/dvp1v2dej/image/upload/v1665561890/aquarent/kayak_f8wwpj.jpg")
material2 = Material.new(name: "Kayak", price: 600, category: category1)
material2.photo.attach(io: file, filename: "kayak.png", content_type: "image/png")
material2.save

file = URI.open("https://res.cloudinary.com/dvp1v2dej/image/upload/v1665561890/aquarent/surf_board_fndqce.jpg")
material3 = Material.new(name: "Surf Board", price: 600, category: category1)
material3.photo.attach(io: file, filename: "surf.png", content_type: "image/png")
material3.save


file = URI.open("https://res.cloudinary.com/dvp1v2dej/image/upload/v1665561890/aquarent/wind_foiling_g2ubyi.jpg")
material4 = Material.new(name: "wind foiling", price: 600, category: category3)
material4.photo.attach(io: file, filename: "wind_foiling.png", content_type: "image/png")
material4.save

file = URI.open("https://res.cloudinary.com/dvp1v2dej/image/upload/v1665561890/aquarent/fishing_rod_xopehu.jpg")
material5 = Material.new(name: "fishing Rod", price: 600, category: category3)
material5.photo.attach(io: file, filename: "fishing_rod.png", content_type: "image/png")
material5.save


puts "creating users"
user1 = User.new(email: "john@gmail.com", password: "123456")
user1.save

puts "creating bookmarks"
# bookings
d1 = DateTime.new(2015, 6, 22)
d2 = DateTime.new(2017, 6, 22)
booking1 = Booking.create(start_date: d1, end_date: d2, total_price: 6.9, material: material1, user: user1)
booking1.save



puts "Finished"
