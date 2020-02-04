# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

service1 = Service.create(name: 'Hair Cut', price: 75.00)
service2 = Service.create(name: 'Permanent Tattoo', price: 350.00)
service3 = Service.create(name: 'Facial', price: 100.00)

user1 = User.create(username: 'Annabelle', password: 'lawl')
user2 = User.create(username: 'Rosalie', password: 'lawl')

employee1 = Employee.create(username: 'lawl')
employee2 = Employee.create(username: 'lawl2')

employee1.service_ids = 1