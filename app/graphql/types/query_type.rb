module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    ''' 
      Resolvers are functions that the GraphQL server uses to fetch the data for a specific query.
      Each field of your GraphQL types needs a corresponding resolver function. 
      When a query arrives at the backend, the server will call those resolver functions that correspond to the fields that are specified in the query.
      All graphQL queries start from a root type called Query 
      '''
    # queries are just represented as fields
    # `all_links` is automatically camelcased to `allLinks`
    field :all_links, [LinkType], null: false

    # this method is invoked, when `all_link` fields is being resolved
    # basically when i pass all_links field in my query, this is the method block being invoked
    def all_links
      Link.all
    end

    # # TODO: remove me
    # field :test_field, String, null: false,
    #   description: "An example field added by the generator"
    # def test_field
    #   "Hello World!"
    # end
  end
end
