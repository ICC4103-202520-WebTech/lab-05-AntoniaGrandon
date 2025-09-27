# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# db/seeds.rb

Invoice.destroy_all
ServiceUsage.destroy_all
Reservation.destroy_all
Guest.destroy_all
Room.destroy_all
Service.destroy_all

guest1 = Guest.create!(
  first_names: "Alonso",
  last_name: "Bobadilla",
  email: "AlonsoBobadilla@gmail.com",
  phone: "966390486",
  document_id: "272047200"
)

guest2 = Guest.create!(
  first_names: "Alexander",
  last_name: "Miranda",
  email: "AlexanderMiranda@gmail.com",
  phone: "947005128",
  document_id: "19508114k"
)

room1 = Room.create!(
  number: "001",
  room_type: "Suite",
  price: 200000,
  status: "available"
)

room2 = Room.create!(
  number: "002",
  room_type: "Double",
  price: 210000,
  status: "occupied"
)

service_limpieza = Service.create!(
  name: "Limpieza",
  price: 35000,
  is_active: false
)

service_gym = Service.create!(
  name: "Gym",
  price: 20000,
  is_active: true
)

reservation1 = Reservation.create!(
  code: "R001",
  guest: guest1,
  room: room1,
  check_in: "2026-08-10",
  check_out: "2026-08-12",
  status: "confirmed",
  adults: 4,
  children: 1
)

reservation2 = Reservation.create!(
  code: "R002",
  guest: guest2,
  room: room2,
  check_in: "2025-09-08",
  check_out: "2025-09-13",
  status: "confirmed",
  adults: 2,
  children: 2
)

ServiceUsage.create!(
  reservation: reservation1,
  service: service_limpieza,
  quantity: 1,
  used_at: "2026-08-11 10:00",
  note: "Limpieza profunda solicitada"
)

Invoice.create!(
  reservation: reservation1,
  nights_subtotal: 400000,
  services_subtotal: 35000,
  tax: 82650,
  total: 517650,
  issued_at: "2026-08-12",
  status: "issued"
)