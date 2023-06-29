puts 'seeding apartment 🏠..'
# Generate fake data for Apartment model
10.times do
  Apartment.create(number: Faker::Number.number(digits: 3))
end

# Generate fake data for Tenant model
10.times do
  Tenant.create(name: Faker::Name.name, age: Faker::Number.between(from: 18, to: 65))
end

# Generate fake data for Lease model
10.times do
  Lease.create(rent: Faker::Number.decimal(l_digits: 4, r_digits: 2))
end

puts 'done seeding ...'