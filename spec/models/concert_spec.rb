require 'spec_helper'

describe "A concert" do

  it "is attended when the date is in the past" do
    concert = Concert.create(concert_attributes(date: 3.months.ago))

    expect(Concert.attended).to include(concert)
  end

  it "is not attended when the date is in the future" do
    concert = Concert.create(concert_attributes(date: 3.months.from_now))

    expect(Concert.attended).not_to include(concert)
  end

  it "returns attended concerts ordered with the most recently attended concert first" do
    concert1 = Concert.create(concert_attributes(date: 3.months.ago))
    concert2 = Concert.create(concert_attributes(date: 2.months.ago))
    concert3 = Concert.create(concert_attributes(date: 1.months.ago))

    expect(Concert.attended).to eq([concert3, concert2, concert1])
  end

  it "requires a venue" do
    concert = Concert.new(venue: "")

    expect(concert.valid?).to be_false
    expect(concert.errors[:venue].any?).to be_true
  end

  it "requires a location" do
    concert = Concert.new(location: "")

    expect(concert.valid?).to be_false
    expect(concert.errors[:location].any?).to be_true
  end

  it "requires a date" do
    concert = Concert.new(date: "")

    expect(concert.valid?).to be_false
    expect(concert.errors[:date].any?).to be_true
  end

  it "is valid with example attributes" do
    concert = Concert.new(concert_attributes)

    expect(concert.valid?).to be_true
  end

  it "has many bands" do
    concert = Concert.new(concert_attributes)

    band1 = concert.bands.new(band_attributes)
    band2 = concert.bands.new(band_attributes)

    expect(concert.bands).to include(band1)
    expect(concert.bands).to include(band2)
  end

  it "deletes associated bands" do
    concert = Concert.create(concert_attributes)

    concert.bands.create(band_attributes)

    expect {
      concert.destroy
    }.to change(Band, :count).by(-1)
  end

end