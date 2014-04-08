require 'spec_helper'

describe "Creating a new concert" do

  it "saves the concert and shows the new concert's details" do
    visit concerts_url

    click_link 'Add New Concert'

    expect(current_path).to eq(new_concert_path)

    fill_in "Bands", with: "Pelican, Circa Survive, Thrice"
    fill_in "Venue", with: "The Masquerade"
    fill_in "Location", with: "Atlanta, GA"
    fill_in "Date", with: "2008-04-26"

    click_button 'Create Concert'

    expect(current_path).to eq(concert_path(Concert.last))

    expect(page).to have_text('Pelican, Circa Survive, Thrice')
    expect(page).to have_text('Concert successfully created!')
  end

  it "does not save the concert if it's invalid" do
    visit new_concert_url

    expect {
      click_button 'Create Concert'
    }.not_to change(Concert, :count)

    expect(current_path).to eq(concerts_path)
    expect(page).to have_text('error')
  end

end