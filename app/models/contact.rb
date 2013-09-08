class Contact < ActiveRecord::Base

  has_many :emails, :as => :emailable


end
