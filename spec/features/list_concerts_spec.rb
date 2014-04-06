require 'spec_helper'

describe "Viewing the list of concerts" do

  it "shows the concerts" do
    visit concerts_url

    expect(page).to have_text("3 Concerts")
    expect(page).to have_text("Concert 1")
    expect(page).to have_text("Concert 2")
    expect(page).to have_text("Concert 3")
  end

end