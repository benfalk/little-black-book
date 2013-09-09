##
# == Address
# Model describing a physical location
#
# == Fields
# * addressable_type
# * addressable_id
# * type
# * street
# * street2
# * city
# * state
# * zip
# * time_zone
# * latitude
# * longitude
# * created_at
# * updated_at
#
class Address < ActiveRecord::Base

  belongs_to :addressable, :polymorphic => true

end
