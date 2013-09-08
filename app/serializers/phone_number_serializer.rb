class PhoneNumberSerializer < ActiveModel::Serializer
  attributes :id,
             :number,
             :extension,
             :created_at,
             :created_at
end
