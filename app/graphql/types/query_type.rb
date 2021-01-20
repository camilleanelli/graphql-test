module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # TODO: remove me
    field :test_field, String, null: false, description: "An example field added by the generator"

    field :all_users, [Types::UserType], null: false do
      description 'Find all users'
    end

    field :user, UserType, null: false do
      description 'Find a user'
      argument :id, ID, required: true
    end

    def user(id:)
      User.find id
    end

    def all_users
      User.all
    end

    def test_field
      "Hello World!"
    end
  end
end
