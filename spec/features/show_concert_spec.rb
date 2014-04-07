require 'spec_helper'

describe "Viewing an individual concert" do

  it "shows the concert's details" do
    concert = Concert.create(concert_attributes)

    visit concert_url(concert)

    expect(page).to have_text(concert.bands)
    expect(page).to have_text(concert.venue)
    expect(page).to have_text(concert.location)
    expect(page).to have_text(concert.date)
  end

end