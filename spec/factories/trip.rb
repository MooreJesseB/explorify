
FactoryGirl.define do
  factory :trip do

    title(Faker::Lorem.words(2).join(""))
    description(Faker::Lorem.words(25).join(""))
    date_start(Faker::Time.date(params = {[:year_range] => 2, :year_latest => 1}))
    date_end =(Faker::Time.date(params = {[:year_range] => 1}))

  end
end