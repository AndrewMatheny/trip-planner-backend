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
trip1 = Trip.create(name: "Drew's Vacay", location: "Hawaii", image: "https://s.abcnews.com/images/Lifestyle/GTY_kauai_hawaii_jt_160924_16x9_992.jpg", category: "Vacation", date: "Summer 2020", notes: "Test Notes", user_id: drew.id)
trip2 = Trip.create(name: "National Parks Roadtrip", location: "Utah", image: "https://assets.simpleviewinc.com/simpleview/image/upload/c_limit,h_1200,q_75,w_1200/v1/clients/garfieldcountyut/Thors_Hammer_BCNP_c1095cdf-3ab0-4141-9a79-d18d661aecee.jpg", category: "Roadtrip", date: "Fall 2019", notes: "Test Notes", user_id: drew.id)
trip3 = Trip.create(name: "Eurotrip", location: "France", image: "https://dw8stlw9qt0iz.cloudfront.net/E9hlebgmZPcr95IXpbRw8jmg4iU=/750x450/filters:format(jpeg):quality(75)/curiosity-data.s3.amazonaws.com/images/content/thumbnail/standard/227f9565-dc33-4352-b588-b8e74ddd079f.png", category: "Vacation", date: "Spring 2020", notes: "Test Notes", user_id: drew.id)
trip4 = Trip.create(name: "Caribbean Cruise", location: "Bahamas", image: "https://cdn.thecrazytourist.com/wp-content/uploads/2017/10/ccimage-shutterstock_439207315.jpg", category: "Cruise", date: "Winter 2020", notes: "Test Notes", user_id: drew.id)
trip5 = Trip.create(name: "Antarctica Tour", location: "Antarctica", image: "https://oceanwide-4579.kxcdn.com/uploads/media-dynamic/cache/jpg_optimize/uploads/media/default/0001/40/thumb_39907_default_1600.jpeg", category: "Cruise", date: "Summer 2021", notes: "Test Notes", user_id: drew.id)
Item.create(name: "Drew's Shoes", quantity: 2, is_packed: false, trip_id: trip1.id)
Item.create(name: "Nintendo Switch", quantity: 1, is_packed: true, trip_id: trip1.id)
Stop.create(name: "Drew's Grandmas House", location: "Kuaii", date: "August 2020", notes: "Bring present for grandma", trip_id: trip1.id)