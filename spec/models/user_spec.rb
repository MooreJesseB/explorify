require 'rails_helper'

RSpec.describe User, :type => :model do

  it "Should create a new user without saving to database" do
    mike = User.new(name: "Mike", email: "me@me.com")
    expect(mike.name).to eq("Mike")
    expect(mike.new_record?).to eq(true)
  end

  subject { FactoryGirl.create(:user) }

  it "should have a valid factory" do
    expect(subject).to be_valid
  end

  subject = FactoryGirl.build(:user, name: "")
  puts subject

  it "should not accept blank name" do
    expect(subject).to_not be_valid
  end

  subject = FactoryGirl.build(:user, email: "")

  it "should not accept blank email" do
    expect(subject).to_not be_valid
  end

  subject = FactoryGirl.build(:user, password: "")

  it "should not expect blank password" do
    expect(subject).to_not be_valid
  end

  subject = FactoryGirl.build(:user, password_confirmation: Faker::Lorem.words(4).join(""))

  it "should expect different password_confirmation to not match" do
    expect(subject).to_not be_valid
  end

  subject = FactoryGirl.build(:user, password_confirmation: Faker::Internet.email)

  it "should expect different email_confirmation to not match" do
    expect(subject).to_not be_valid
  end

  subject = FactoryGirl.build(:user, name: "Abe")

  it "should expect name less that 4 characters to fail" do
    expect(subject).to_not be_valid
  end  

  subject = FactoryGirl.build(:user, password: "happy")

  it "should expect password less that -4 characters to fail" do
    expect(subject).to_not be_valid
  end    

end










