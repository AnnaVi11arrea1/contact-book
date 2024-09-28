task(:howdy) do
  pp "Hello!"
end

task(:world) do
  pp "World!"
end

task(:sample_contacts => :environment) do
  if Rails.env.development?
    Contact.destroy_all
  end
  
  200.times do
    x = Contact.new
    x.first_name = Faker::Name.first_name
    x.last_name = Faker::Name.last_name
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
