module Types
  class UserType < Types::BaseObject
    field :id, ID, null: false
    field :last_name, String, null: true
    field :first_name, String, null: true
    field :email, String, null: true
    field :birthdate, GraphQL::Types::ISO8601Date, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
