task(:howdy) do
  pp "Hello!"
end

task(:world) do
  pp "World!"
end

task(:sample_contacts => :environment) do
  200.times do
    x = Contact.new

    x.first_name = Faker::Name.first_name
    x.last_name = Faker::Name.last_name
    x.date_of_birth = Faker::Date.birthday(18, 65)
    x.street_address = Faker::Address.street_address
    x.city = Faker::Address.city
    x.state = Faker::Address.state_abbr
    x.zip_code = Faker::Address.zip_code
    x.phone_number = Faker::PhoneNumber.phone_number
    x.notes = Faker::Quote.famous_last_words

    x.save
  end

  x = Contact.new
  x.first_name = "John"
  x.last_name = "Doe"
  x.date_of_birth = "1980-01-01"
  x.save

  x = Contact.new
  x.first_name = "Jane"
  x.last_name = "Doe"
  x.date_of_birth = "1980-01-01"
  x.save
end
