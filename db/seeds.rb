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

puts 'Seeding airports...'
Airport.create(name: 'San Francisco International Airport', code: 'SFO')
Airport.create(name: 'John F. Kennedy International Airport', code: 'JFK')
Airport.create(name: 'Will Rogers International Airport', code: 'OKC')
Airport.create(name: 'Dallas/Fort Worth International Airport', code: 'DFW')
Airport.create(name: 'Albuquerque "International Sunport', code: 'ABQ')
puts 'Seeding flights...'
100.times do
  airports = (1..5).to_a.shuffle
  date = [Date.yesterday, Date.today, Date.tomorrow]
  Flight.create(origin_id: airports[0], destination_id: airports[1], departure_date: date.sample, departure_time: Time.now, duration: 100)
end
puts 'Seeding complete.'
