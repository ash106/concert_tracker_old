require 'spec_helper'

describe "Creating a new band" do

  it "saves the band" do
    concert = Concert.create(concert_attributes)

    visit concert_url(concert)

    click_link 'Add Band'

    expect(current_path).to eq(new_concert_band_path(concert))

    fill_in "Name", with: "Thrice"

    click_button 'Add Band'

    expect(current_path).to eq(concert_bands_path(concert))

    expect(page).to have_text("Band has successfully been added!")
  end

  it "does not save the band if it's invalid" do
    concert = Concert.create(concert_attributes)

    visit new_concert_band_url(concert)

    expect {
      click_button 'Add Band'
    }.not_to change(Band, :count)

    expect(page).to have_text('error')
  end

end