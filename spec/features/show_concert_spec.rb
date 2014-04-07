require 'spec_helper'

describe "Viewing an individual concert" do

  it "shows the concert's details" do
    concert = Concert.create(bands: "Pelican, Circa Survive, Thrice",
                             venue: "The Masquerade",
                             location: "Atlanta, GA",
                             date: "2008-04-26")

    visit concert_url(concert)

    expect(page).to have_text(concert.bands)
    expect(page).to have_text(concert.venue)
    expect(page).to have_text(concert.location)
    expect(page).to have_text(concert.date)
  end

end