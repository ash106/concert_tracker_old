def concert_attributes(overrides = {})
  {
    bands: "Pelican, Circa Survive, Thrice",
    venue: "The Masquerade",
    location: "Atlanta, GA",
    date: "2008-04-26"
  }.merge(overrides)
end