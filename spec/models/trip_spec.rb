require 'rails_helper'

RSpec.describe Trip, :type => :model do
  it "Should create a new trip without saving to database" do
    trip = Trip.new(title: "My Trip", date_start: "2013-01-01", date_end: "2013-01-14")
    expect(trip.title).to eq("My Trip")
    expect(trip.date_start).to eq("2013-01-01")
    expect(trip.date_end).to eq("2013-01-14")
    expect(trip.new_record?).to eq(true)
  end

  subject { FactoryGirl.create(:trip) }

  it "should have a vaild factory" do
    expect(subject).to be_valid
  end

  # it "should create a valid trip" do
  #   expect(trip.title).to be_valid
  # end

end

