require 'spec_helper'

describe "A band" do

  it "belongs to a concert" do
    concert = Concert.create(concert_attributes)

    band = concert.bands.new(band_attributes)

    expect(band.concert).to eq(concert)
  end

  it "with example attributes is valid" do
    band = Band.new(band_attributes)

    expect(band.valid?).to be_true
  end

  it "requires a name" do
    band = Band.new(name: "")

    expect(band.valid?).to be_false
    expect(band.errors[:name].any?).to be_true
  end

end