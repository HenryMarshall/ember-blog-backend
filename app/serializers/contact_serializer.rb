class ContactSerializer < ActiveModel::Serializer
  # I'm thinking the are the keys returned by a CORS response.
  attributes :id, :first_name, :last_name, :email, :title, :created_at, :updated_at
end
