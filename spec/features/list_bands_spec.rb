require 'spec_helper'

describe "Viewing a list of bands" do

  it "shows the bands for a specific concert" do
    concert1 = Concert.create(concert_attributes(date: "2008-04-26"))
    band1 = concert1.bands.create(band_attributes(name: "Pelican"))
    band2 = concert1.bands.create(band_attributes(name: "Thrice"))

    concert2 = Concert.create(concert_attributes(date: "2010-08-10"))
    band3 = concert2.bands.create(band_attributes(name: "Saosin"))

    visit concert_bands_url(concert1)

    expect(page).to have_text(band1.name)
    expect(page).to have_text(band2.name)
    expect(page).not_to have_text(band3.name)
  end

end  