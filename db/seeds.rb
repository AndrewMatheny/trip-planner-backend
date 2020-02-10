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
nicole = User.create(username: "Nicole")
amy = User.create(username: "Amy")
trip1 = Trip.create(name: "Drew's Vacay", location: "Hawaii", image: "https://react.semantic-ui.com/images/wireframe/image.png", category: "Vacation", date: "Summer 2020", notes: "Test Notes", user_id: drew.id)
trip2 = Trip.create(name: "Drew's National Parks Roadtrip", location: "Utah", image: "https://react.semantic-ui.com/images/wireframe/image.png", category: "Roadtrip", date: "Fall 2019", notes: "Test Notes", user_id: drew.id)
trip3 = Trip.create(name: "Drew's Eurotrip", location: "France", image: "https://react.semantic-ui.com/images/wireframe/image.png", category: "Vacation", date: "Spring 2020", notes: "Test Notes", user_id: drew.id)
trip4 = Trip.create(name: "Drew's Caribbean Cruise", location: "Bahamas", image: "https://react.semantic-ui.com/images/wireframe/image.png", category: "Cruise", date: "Winter 2020", notes: "Test Notes", user_id: drew.id)
trip5 = Trip.create(name: "Drew's Antarctica Tour", location: "Antarctica", image: "https://react.semantic-ui.com/images/wireframe/image.png", category: "Cruise", date: "Summer 2021", notes: "Test Notes", user_id: drew.id)
trip6 = Trip.create(name: "Nicole's Costa Rica Trip", location: "Costa Rica", image: "https://react.semantic-ui.com/images/wireframe/image.png", category: "Vacation", date: "Summer 2020", notes: "Trip buddy: Barbie", user_id: nicole.id)
trip7 = Trip.create(name: "Amy's Iceland Tour", location: "Iceland", image: "https://react.semantic-ui.com/images/wireframe/image.png", category: "Vacation", date: "Fall 2020", notes: "Check weather", user_id: amy.id)
Item.create(name: "Drew's Shoes", quantity: 2, is_packed: false, trip_id: trip1.id)
Item.create(name: "Nintendo Switch", quantity: 1, is_packed: true, trip_id: trip1.id)
Item.create(name: "Swimsuit", quantity: 1, is_packed: false, trip_id: trip6.id)
Item.create(name: "Scarf", quantity: 1, is_packed: false, trip_id: trip7.id)
Stop.create(name: "Drew's Grandmas House", location: "Kuaii", date: "August 2020", notes: "Bring present for grandma", trip_id: trip1.id)
Stop.create(name: "Beach", location: "By the coast", date: "July 2020", notes: "Bring sunblock!", trip_id: trip6.id)
Stop.create(name: "Blue Lagoon", location: "Iceland", date: "October 2020", notes: "Relax", trip_id: trip7.id)