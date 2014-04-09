require 'spec_helper'

describe "Deleting a concert" do

  it "destroys the concert and shows the concert listings without the deleted concert" do
    concert = Concert.create(concert_attributes)

    visit concert_path(concert)

    click_link 'Delete'

    expect(current_path).to eq(concerts_path)
    expect(page).not_to have_text(concert.date)
    expect(page).to have_text("Concert successfully deleted!")
  end

end