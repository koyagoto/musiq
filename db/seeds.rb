# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Genre.create do |a|
  a.id = 1
  a.name = 'J-pop'
end

Genre.create do |a|
  a.id = 2
  a.name = 'Soul'
end

Genre.create do |a|
  a.id = 3
  a.name = 'Jazz'
end

Genre.create do |a|
  a.id = 4
  a.name = 'Dance'
end

Genre.create do |a|
  a.id = 5
  a.name = 'Alternative'
end

Genre.create do |a|
  a.id = 6
  a.name = 'Classic'
end

Genre.create do |a|
  a.id = 7
  a.name = 'HipHop'
end

Genre.create do |a|
  a.id = 8
  a.name = 'Rock'
end

Genre.create do |a|
  a.id = 9
  a.name = 'Reggae'
end
