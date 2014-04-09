require 'spec_helper'

describe "Editing a concert" do

  it "updates the concert and shows the concert's updated details" do
    concert = Concert.create(concert_attributes)

    visit concert_url(concert)

    click_link 'Edit'

    expect(current_path).to eq(edit_concert_path(concert))

    expect(find_field('Venue').value).to eq(concert.venue)

    fill_in 'Venue', with: "Updated Venue"

    click_button 'Update Concert'

    expect(current_path).to eq(concert_path(concert))

    expect(page).to have_text('Updated Venue')
    expect(page).to have_text('Concert successfully updated!')
  end

  it "does not update the concert if it's invalid" do
    concert = Concert.create(concert_attributes)

    visit edit_concert_url(concert)

    fill_in 'Venue', with: " "

    click_button 'Update Concert'

    expect(page).to have_text('error')
  end

end