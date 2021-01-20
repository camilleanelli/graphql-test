# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(first_name: 'Hermione', last_name: 'Granger', email: 'hg@example.com', birthdate: Date.new(1986, 3, 12))
User.create(first_name: 'Severus', last_name: 'Rogue', email: 'sr@example.com', birthdate: Date.new(1960, 11, 4))
