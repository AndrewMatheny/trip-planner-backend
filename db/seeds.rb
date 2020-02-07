# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first

User.destroy_all
Trip.destroy_all
Item.destroy_all
Stop.destroy_all

drew = User.create(username: "Drew")
trip1 = Trip.create(name: "Drew's Vacay", location: "Hawaii", image: "blank", category: "Vacation", date: "Summer 2020", notes: "Test Notes", user_id: drew.id)
Item.create(name: "Drew's Shoes", quantity: 2, is_packed: false, trip_id: trip1.id)
Item.create(name: "Nintendo Switch", quantity: 1, is_packed: true, trip_id: trip1.id)
Stop.create(name: "Drew's Grandmas House", location: "Kuaii", date: "August 2020", notes: "Bring present for grandma", trip_id: trip1.id)