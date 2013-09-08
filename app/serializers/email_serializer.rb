class EmailSerializer < ActiveModel::Serializer
  attributes :id,
             :address,
             :created_at,
             :updated_at
end
