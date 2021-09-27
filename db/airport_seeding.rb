require 'csv'

def seed_airports
  CSV.foreach(Rails.root.join('db/data/airports.csv'), headers: true) do |row|
    next unless row['type'] == 'large_airport' && row['iso_country'] == 'US'

    Airport.create({
      name: row['name'],
      code: row['local_code']
    })
  end
end
