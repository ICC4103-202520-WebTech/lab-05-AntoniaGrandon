# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Room.create(number: "001", room_type: 12, price: 200000, status: 0)
Room.create(number: "002", room_type: 11, price: 210000, status: 1)

Guest.create(first_names: "Alonso", last_name: "Bobadilla", email: "AlonsoBobadilla@gmail.com", phone: "966390486", document_id: "272047200")
Guest.create(first_names: "Alexander", last_name: "Miranda", email: "AlexanderMiranda@gmail.com", phone: "947005128", document_id: "19508114k")

Reservation.create(code: "R001", guest_id: 27204720, room_id: 001, check_in: "2026-08-10", check_out: "2026-08-12", status: 0, adults: 4, children: 1)
Reservation.create(code: "R002", guest_id: 19508114, room_id: 002, check_in: "2025-09-08", check_out: "2025-09-13", status: 0, adults: 2, children: 2)

Service.create(name: "Limpieza", price: 35000, is_active: false)
Service.create(name: "gym", price: 20000, is_active: true)

ServiceUsage.create(reservation_id: 1000, service_id: 100, quantity: 1, used_at: "2025-08-11 10:00", note: "Limpieza")
ServiceUsage.create(reservation_id: 1001, service_id: 101, quantity: 1, used_at: "2025-09-09 15:00", note: "usar gym")

Invoice.create(reservation_id: 001, nights_subtotal: 200000, services_subtotal: 35000, tax: 10000, total: 245000, issued_at: "2026-08-10", status: "issued")
Invoice.create(reservation_id: 002, nights_subtotal: 210000, services_subtotal: 20000, tax: 15000, total: 245000, issued_at: "2025-09-08", status: "issued")