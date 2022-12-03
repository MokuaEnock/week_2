# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Seeding heroes"
h1 = Hero.create(name: "Kamala Khan", super_name: "Ms. Marvel")
h2 = Hero.create(name: "Doreen Green", super_name: "Squirrel Girl")
h3 = Hero.create(name: "Gwen Stacy", super_name: "Spider-Gwen")

puts "Seeding powers"
Power.create(
  name: "super strength",
  description: "gives the wielder super-human strengths",
  heros: [h3, h2]
)

Power.create(
  name: "flight",
  description:
    "gives the wielder the ability to fly through the skies at supersonic speed",
  heros: [h1, h3]
)

Power.create(
  name: "telekinesis",
  description: "gives the ability to move things with the mind",
  heros: [h1, h2]
)
