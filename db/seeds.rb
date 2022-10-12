# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "cleaning database"

User.destroy_all
Material.destroy_all
Category.destroy_all
Booking.destroy_all


puts "creating categories"
category1 = Category.new(name: "Boards")
category2 = Category.new(name: "Wind sports")
category3 = Category.new(name: "others")




category1.save
category2.save
category3.save


puts "creating materials"
# materials
material1 = Material.create(name: "small paddle", image: "https://image.tmdb.org/t/p/original/8UlWHLMpgZm9bx6QYh0NFoq67TZ.jpg", price: 6.9, category: category1)
material1.save

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
