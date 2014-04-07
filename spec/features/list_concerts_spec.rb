require 'spec_helper'

describe "Viewing the list of concerts" do

  it "shows the concerts" do
    concert1 = Concert.create(bands: "New London Fire, From Autumn To Ashes, Lifetime, Thursday",
                              venue: "The Starland Ballroom",
                              location: "Sayreville, NJ",
                              date: "2006-12-27")

    concert2 = Concert.create(bands: "Dear Hearts, The Dear and Departed, Alexisonfire, Saosin",
                              venue: "Chain Reaction",
                              location: "Anaheim, CA",
                              date: "2007-06-25")

    concert3 = Concert.create(bands: "Pelican, Circa Survive, Thrice",
                              venue: "The Masquerade",
                              location: "Atlanta, GA",
                              date: "2008-04-26")

    visit concerts_url

    expect(page).to have_text("3 Concerts")
    expect(page).to have_text(concert1.bands)
    expect(page).to have_text(concert2.bands)
    expect(page).to have_text(concert3.bands)

    expect(page).to have_text(concert1.venue)
    expect(page).to have_text(concert1.location)
    expect(page).to have_text(concert1.date)
  end

  it "does not show a concert that hasn't yet been attended" do
    concert = Concert.create(concert_attributes(date: 1.month.from_now))

    visit concerts_url

    expect(page).not_to have_text(concert.bands)
  end

end