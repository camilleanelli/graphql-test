module Mutations
  class CreateUser < BaseMutation

    # TODO: define return fields
    field :user, Types::UserType, null: false

    # TODO: define arguments
    argument :first_name, String, required: true
    argument :last_name, String, required: true
    argument :email, String, required: true
    argument :birthdate, String, required: true

    # TODO: define resolve method
    def resolve(args)
      user = User.create(
        first_name: args[:first_name],
        last_name: args[:last_name],
        email: args[:email],
        birthdate: args[:birthdate]
      )
      { user: user }
    end
  end
end
