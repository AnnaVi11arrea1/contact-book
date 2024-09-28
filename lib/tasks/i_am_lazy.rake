task(:howdy) do
  pp "Hello!"
end

task(:world) do
  pp "World!"
end

task(:sample_contacts => :environment) do
  x = Contact.new
  x.first_name = "John"
  x.last_name = "Doe"
  x.date_of_birth = "1980-01-01"
  x.save
end
