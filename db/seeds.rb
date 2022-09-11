puts "🌱 Seeding spices..."

# Bus.create(insurance: "insured",phone: 78907654,vehicle_registration: "KCJ 123k")
# Bus.create(insurance: "uinsured",phone: 78906754,vehicle_registration: "KCL 183k")
# Bus.create(insurance: "insured",phone: 78907654,vehicle_registration: "KBJ 123G")
Bus.create(insurance: "insured",phone: 78954554,vehicle_registration: "KCU 173k")

# Route.create(location: "Mombasa",name: "John Pombe")
# Route.create(location: "Mombasa",name: "Stella Mwangi")
# Route.create(location: "Nairobi",name: "mark Kibet")
# Passenger.create(name: 'John', phone: 8768768687, location: "kilifi")
# Passenger.create(name: 'Lorna', phone: 8768768677, location: "Malindi")
# Passenger.create(name: 'Faith', phone: 8756768687, location: "Nairobi")
# Seed your database here
Passenger.create(name: 'Kimani', phone: 865487, location: "Mombasa")

puts "✅ Done seeding!"
