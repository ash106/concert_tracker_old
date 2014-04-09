require 'spec_helper'

describe "Navigating concerts" do

  it "allows navigation from the detail page to the listing page" do
    concert = Concert.create(concert_attributes)

    visit concert_url(concert)

    click_link "All Concerts"

    expect(current_path).to eq(concerts_path)
  end

  it "allows navigation from the listing page to the detail page" do
    concert = Concert.create(concert_attributes)

    visit concerts_url

    click_link concert.date

    expect(current_path).to eq(concert_path(concert))
  end

end