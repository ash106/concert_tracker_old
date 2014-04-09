def concert_attributes(overrides = {})
  {
    venue: "The Masquerade",
    location: "Atlanta, GA",
    date: "2008-04-26"
  }.merge(overrides)
end

def band_attributes(overrides = {})
  {
    name: "Thrice"
  }.merge(overrides)
end