class AddressSerializer < ActiveModel::Serializer

  attributes :id,
             :street,
             :street2,
             :city,
             :state,
             :zip,
             :time_zone,
             :latitude,
             :longitude,
             :created_at,
             :updated_at

end
