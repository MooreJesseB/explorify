FactoryGirl.define do
  factory :user do

    name(Faker::Name.name)
    pswrd = Faker::Lorem.words(4).join("")
    password(pswrd)
    password_confirmation(pswrd)

    # apparently there is no good way to validate email addresses with regex.  
    # So errors will sometimes be thrown for email validaiton
    eml = Faker::Internet.email
    email(eml)
    email_confirmation(eml)

  end
end


