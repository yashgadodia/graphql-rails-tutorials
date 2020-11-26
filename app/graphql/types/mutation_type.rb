module Types
  class MutationType < Types::BaseObject
    # here we are exposing the mutation
    field :create_link, mutation: Mutations::CreateLink
    
    # # TODO: remove me
    # field :test_field, String, null: false,
    #   description: "An example field added by the generator"
    # def test_field
    #   "Hello World"
    # end
  end
end
