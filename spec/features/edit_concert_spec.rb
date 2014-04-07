require 'spec_helper'

describe "Editing a concert" do

  it "updates the concert and shows the concert's updated details" do
    concert = Concert.create(concert_attributes)

    visit concert_url(concert)

    click_link 'Edit'

    expect(current_path).to eq(edit_concert_path(concert))

    expect(find_field('Bands').value).to eq(concert.bands)

    fill_in 'Bands', with: "Updated Bands"

    click_button 'Update Concert'

    expect(current_path).to eq(concert_path(concert))

    expect(page).to have_text('Updated Bands')
  end

end