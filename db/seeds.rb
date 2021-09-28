# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# require_relative './airport_seeding'

# puts 'Seeding...'

# seed_airports

# puts 'Seeding done.'

puts 'Seeding...'
Airport.create(name: 'San Francisco International Airport', code: 'SFO')
Airport.create(name: 'John F. Kennedy International Airport', code: 'JFK')
Flight.create(origin_id: 1, destination_id: 2, departure_time: DateTime.now, duration: 400)
Flight.create(origin_id: 2, destination_id: 1, departure_time: DateTime.now, duration: 200)
puts 'Seeding complete.'
