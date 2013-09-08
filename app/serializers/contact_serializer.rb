class ContactSerializer < ActiveModel::Serializer

  attributes :id,
             :first_name,
             :last_name,
             :nick_name,
             :company,
             :department,
             :title,
             :created_at,
             :updated_at

  has_many :emails
  has_many :phone_numbers

  embed :id, :include => true

end
