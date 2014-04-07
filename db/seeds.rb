# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Concert.create!([
  {
    bands: "Pelican, Circa Survive, Thrice",
    venue: "The Masquerade",
    location: "Atlanta, GA",
    date: "2008-04-26"
  },
  {
    bands: "Facing New York, Emanuel, Taking Back Sunday",
    venue: "Boulder Theatre",
    location: "Boulder, CO",
    date: "2006-03-31"
  },
  {
    bands: "The Outline, Envy On The Coast, Your Enemies Friends, Forgive Durden, Saosin",
    venue: "The Door",
    location: "Dallas, TX",
    date: "2006-08-10"
  },
  {
    bands: "New London Fire, From Autumn To Ashes, Lifetime, Thursday",
    venue: "The Starland Ballroom",
    location: "Sayreville, NJ",
    date: "2006-12-27"
  },
  {
    bands: "Zechs Marquise, Dredg, Rx Bandits",
    venue: "House of Blues",
    location: "New Orleans, LA",
    date: "2009-07-18"
  }
])
    