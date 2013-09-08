class Contact < ActiveRecord::Base

  has_many :emails, :as => :emailable

  has_many :phone_numbers, :as => :callable

end
