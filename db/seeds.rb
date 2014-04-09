# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Concert.create!([
  {
    venue: "The Masquerade",
    location: "Atlanta, GA",
    date: "2008-04-26"
  },
  {
    venue: "Boulder Theatre",
    location: "Boulder, CO",
    date: "2006-03-31"
  },
  {
    venue: "The Door",
    location: "Dallas, TX",
    date: "2006-08-10"
  },
  {
    venue: "The Starland Ballroom",
    location: "Sayreville, NJ",
    date: "2006-12-27"
  },
  {
    venue: "House of Blues",
    location: "New Orleans, LA",
    date: "2009-07-18"
  }
])

concert = Concert.find_by(date: "2008-04-26")
concert.bands.create!(name: "Pelican")
concert.bands.create!(name: "Circa Survive")
concert.bands.create!(name: "Thrice")

concert = Concert.find_by(date: "2006-03-31")
concert.bands.create!(name: "Facing New York")
concert.bands.create!(name: "Emanuel")
concert.bands.create!(name: "Taking Back Sunday")

concert = Concert.find_by(date: "2006-08-10")
concert.bands.create!(name: "The Outline")
concert.bands.create!(name: "Envy On The Coast")
concert.bands.create!(name: "Your Enemies Friends")
concert.bands.create!(name: "Forgive Durden")
concert.bands.create!(name: "Saosin")

concert = Concert.find_by(date: "2006-12-27")
concert.bands.create!(name: "New London Fire")
concert.bands.create!(name: "From Autumn To Ashes")
concert.bands.create!(name: "Lifetime")
concert.bands.create!(name: "Thursday")

concert = Concert.find_by(date: "2009-07-18")
concert.bands.create!(name: "Zechs Marquise")
concert.bands.create!(name: "Dredg")
concert.bands.create!(name: "Rx Bandits")
    