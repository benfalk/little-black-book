##
# == Contact
# Model with information on a person
#
# === Fields
# * first_name
# * last_name
# * nick_name
# * company
# * department
# * title
# * created_at
# * updated_at
#
class Contact < ActiveRecord::Base

  has_many :emails, :as => :emailable

  has_many :phone_numbers, :as => :callable

  has_one :address, :as => :addressable

end
