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
                        nick_name: ''
      end
    end

  end

end
