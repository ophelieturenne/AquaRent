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
User.destroy_all
Category.destroy_all


puts "creating categories"
category1 = Category.new(name: "Boards")
category2 = Category.new(name: "Sailings")
category3 = Category.new(name: "Others")
category4 = Category.new(name: "Pool Floats")
category5 = Category.new(name: "Boats")





category1.save
category2.save
category3.save


puts "creating materials"

file = URI.open("https://res.cloudinary.com/dvp1v2dej/image/upload/v1665561920/aquarent/canoe_zooayz.jpg")
material = Material.new(name: "Canoe", price: 1000, category: category5)
material.photo.attach(io: file, filename: "canoe.png", content_type: "image/png")
material.save


file = URI.open("https://res.cloudinary.com/dvp1v2dej/image/upload/v1665561894/aquarent/fly_board_ebz8wv.jpg")
material1 = Material.new(name: "Fly board", price: 700, category: category1)
material1.photo.attach(io: file, filename: "fly_board.png", content_type: "image/png")
material1.save

file = URI.open("https://res.cloudinary.com/dvp1v2dej/image/upload/v1665561890/aquarent/kayak_f8wwpj.jpg")
material2 = Material.new(name: "Kayak", price: 1000, category: category5)
material2.photo.attach(io: file, filename: "kayak.png", content_type: "image/png")
material2.save

file = URI.open("https://res.cloudinary.com/dvp1v2dej/image/upload/v1665561890/aquarent/surf_board_fndqce.jpg")
material3 = Material.new(name: "Surf Board", price: 600, category: category1)
material3.photo.attach(io: file, filename: "surf.png", content_type: "image/png")
material3.save


file = URI.open("https://res.cloudinary.com/dvp1v2dej/image/upload/v1665561890/aquarent/wind_foiling_g2ubyi.jpg")
material4 = Material.new(name: "wind foiling", price: 800, category: category2)
material4.photo.attach(io: file, filename: "wind_foiling.png", content_type: "image/png")
material4.save

file = URI.open("https://res.cloudinary.com/dvp1v2dej/image/upload/v1665561890/aquarent/fishing_rod_xopehu.jpg")
material5 = Material.new(name: "fishing Rod", price: 100, category: category3)
material5.photo.attach(io: file, filename: "fishing_rod.png", content_type: "image/png")
material5.save

file = URI.open("https://res.cloudinary.com/dvp1v2dej/image/upload/v1665728826/aquarent/wakeboard_bfkarq.jpg")
material6 = Material.new(name: "Wakeboard", price: 800, category: category1)
material6.photo.attach(io: file, filename: "wakeboard.png", content_type: "image/png")
material6.save

file = URI.open("https://res.cloudinary.com/dvp1v2dej/image/upload/v1665739640/aquarent/kitesurf_2_crdmm6.jpg")
material7 = Material.new(name: "Kitesurf", price: 800, category: category2)
material7.photo.attach(io: file, filename: "kitsurf.png", content_type: "image/png")
material7.save

file = URI.open("https://res.cloudinary.com/dvp1v2dej/image/upload/v1665739372/aquarent/sailbord_rvipwg.jpg")
material8 = Material.new(name: "sailboard", price: 800, category: category1)
material8.photo.attach(io: file, filename: "sailboard.png", content_type: "image/png")
material8.save

file = URI.open("https://res.cloudinary.com/dvp1v2dej/image/upload/v1665736496/aquarent/scuba_qmozko.jpg")
material9 = Material.new(name: "scuba", price: 1000, category: category3)
material9.photo.attach(io: file, filename: "scuba.png", content_type: "image/png")
material9.save

file = URI.open("https://res.cloudinary.com/dvp1v2dej/image/upload/v1665731056/aquarent/snorkeling_cwdw9c.jpg")
material10 = Material.new(name: "Snorkeling", price: 300, category: category3)
material10.photo.attach(io: file, filename: "Snorkeling.png", content_type: "image/png")
material10.save

file = URI.open("https://res.cloudinary.com/dvp1v2dej/image/upload/v1665736593/aquarent/jetski_lnqyes.jpg")
material11 = Material.new(name: "Jetski", price: 1000, category: category3)
material11.photo.attach(io: file, filename: "Jetski.png", content_type: "image/png")
material11.save

file = URI.open("https://res.cloudinary.com/dvp1v2dej/image/upload/v1665731578/aquarent/scuba_scooter_obvudx.jpg")
material12 = Material.new(name: "Scuba Scooter", price: 800, category: category3)
material12.photo.attach(io: file, filename: "Scuba Scooter.png", content_type: "image/png")
material12.save

file = URI.open("https://res.cloudinary.com/dvp1v2dej/image/upload/v1665736167/aquarent/flamingo_float_egt7vv.jpg")
material13 = Material.new(name: "Flamingo(2p)", price: 120, category: category4)
material13.photo.attach(io: file, filename: "Flamingo.png", content_type: "image/png")
material13.save

file = URI.open("https://res.cloudinary.com/dvp1v2dej/image/upload/v1665736335/aquarent/4person_swan_svirtk.jpg")
material14 = Material.new(name: "Swan(4p)", price: 200, category: category4)
material14.photo.attach(io: file, filename: "Swan.png", content_type: "image/png")
material14.save

file = URI.open("https://res.cloudinary.com/dvp1v2dej/image/upload/v1665732587/aquarent/unicorn_float_mhbs2z.jpg")
material15 = Material.new(name: "Unicorn(1p)", price: 60, category: category4)
material15.photo.attach(io: file, filename: "Unicorn.png", content_type: "image/png")
material15.save

file = URI.open("https://res.cloudinary.com/dvp1v2dej/image/upload/v1665732387/aquarent/Big_Donut_wuksb0.jpg")
material16 = Material.new(name: "Donut(1p)", price: 60, category: category4)
material16.photo.attach(io: file, filename: "Donut.png", content_type: "image/png")
material16.save

file = URI.open("https://res.cloudinary.com/dvp1v2dej/image/upload/v1665732355/aquarent/swimming_armbands_dmt9g5.jpg")
material17 = Material.new(name: "Swimming Armbands", price: 30, category: category4)
material17.photo.attach(io: file, filename: "Swimming Armbands.png", content_type: "image/png")
material17.save

file = URI.open("https://res.cloudinary.com/dvp1v2dej/image/upload/v1665732578/aquarent/long_pool_floats_bemoat.jpg")
material18 = Material.new(name: "Long pool floats", price: 20, category: category4)
material18.photo.attach(io: file, filename: "Long pool floats.png", content_type: "image/png")
material18.save

file = URI.open("https://res.cloudinary.com/dvp1v2dej/image/upload/v1665736063/aquarent/Parasol_yb7aqa.jpg")
material19 = Material.new(name: "Beach Parasol", price: 150, category: category3)
material19.photo.attach(io: file, filename: "Beach Parasol.png", content_type: "image/png")
material19.save

file = URI.open("https://res.cloudinary.com/dvp1v2dej/image/upload/v1665734105/aquarent/paddle_boards_tne3an.jpg")
material20 = Material.new(name: "Paddle Board", price: 300, category: category1)
material20.photo.attach(io: file, filename: "Paddle board.png", content_type: "image/png")
material20.save

file = URI.open("https://res.cloudinary.com/dvp1v2dej/image/upload/v1665741038/aquarent/trampoline_l5vgev.jpg")
material21 = Material.new(name: "Trampoline", price: 400, category: category3)
material21.photo.attach(io: file, filename: "Trampoline.png", content_type: "image/png")
material21.save

file = URI.open("https://res.cloudinary.com/dvp1v2dej/image/upload/v1665739294/aquarent/pedalo1p_qihtpb.jpg")
material22 = Material.new(name: "Pedalo(1p)", price: 400, category: category5)
material22.photo.attach(io: file, filename: "Pedalo1p.png", content_type: "image/png")
material22.save

file = URI.open("https://res.cloudinary.com/dvp1v2dej/image/upload/v1665739289/aquarent/pedalo2p_lsc9y4.jpg")
material23 = Material.new(name: "Pedalo(2p)", price: 600, category: category5)
material23.photo.attach(io: file, filename: "Pedalo2p.png", content_type: "image/png")
material23.save

# file = URI.open("")
# material = Material.new(name: "", price: 400, category: category)
# material.photo.attach(io: file, filename: ".png", content_type: "image/png")
# material.save

# file = URI.open("")
# material = Material.new(name: "", price: 400, category: category)
# material.photo.attach(io: file, filename: ".png", content_type: "image/png")
# material.save

# file = URI.open("")
# material = Material.new(name: "", price: 400, category: category)
# material.photo.attach(io: file, filename: ".png", content_type: "image/png")
# material.save

# file = URI.open("")
# material = Material.new(name: "", price: 400, category: category)
# material.photo.attach(io: file, filename: ".png", content_type: "image/png")
# material.save

# file = URI.open("")
# material = Material.new(name: "", price: 400, category: category)
# material.photo.attach(io: file, filename: ".png", content_type: "image/png")
# material.save

# file = URI.open("")
# material = Material.new(name: "", price: 400, category: category)
# material.photo.attach(io: file, filename: ".png", content_type: "image/png")
# material.save

# file = URI.open("")
# material = Material.new(name: "", price: 400, category: category)
# material.photo.attach(io: file, filename: ".png", content_type: "image/png")
# material.save

# file = URI.open("")
# material = Material.new(name: "", price: 400, category: category)
# material.photo.attach(io: file, filename: ".png", content_type: "image/png")
# material.save


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
