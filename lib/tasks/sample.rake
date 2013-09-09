begin

  namespace :sample do

    desc 'Sample Contact Data'
    task :contacts => :environment do
      10.times do
        Contact.create! first_name: Faker::Name.first_name,
                        last_name: Faker::Name.last_name,
                        title: Faker::Name.title,
                        company: Faker::Company.name,
                        department: Faker::Commerce.department,
                        nick_name: '',
			emails: [Email.new(address: Faker::Internet.email)],
                        phone_numbers: [PhoneNumber.from_string(Faker::PhoneNumber.phone_number)],
                        address: Address.new( street: Faker::Address.street_address,
                                              street2: '',
                                              city: Faker::Address.city,
                                              state: Faker::Address.state,
                                              zip: Faker::Address.zip,
                                              time_zone: Faker::Address.time_zone,
                                              latitude: Faker::Address.latitude,
                                              longitude: Faker::Address.longitude )
      end
    end

  end

end
