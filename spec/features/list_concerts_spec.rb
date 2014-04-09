require 'spec_helper'

describe "Viewing the list of concerts" do

  it "shows the concerts" do
    concert1 = Concert.create(venue: "The Starland Ballroom",
                              location: "Sayreville, NJ",
                              date: "2006-12-27")

    concert2 = Concert.create(venue: "Chain Reaction",
                              location: "Anaheim, CA",
                              date: "2007-06-25")

    concert3 = Concert.create(venue: "The Masquerade",
                              location: "Atlanta, GA",
                              date: "2008-04-26")

    visit concerts_url

    expect(page).to have_text("3 Concerts")
    expect(page).to have_text(concert1.date)
    expect(page).to have_text(concert2.date)
    expect(page).to have_text(concert3.date)

    expect(page).to have_text(concert1.venue)
    expect(page).to have_text(concert1.location)
  end

  it "does not show a concert that hasn't yet been attended" do
    concert = Concert.create(concert_attributes(date: 1.month.from_now))

    visit concerts_url

    expect(page).not_to have_text(concert.date)
  end

end