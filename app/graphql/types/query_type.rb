module Types
  class QueryType < BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # queries are just represented as fields
    # `all_links` is automatically camelcased to `allLinks`
    field :all_links, [LinkType], null: false
    field :all_users, [UserType], null: false
    
    # this method is invoked, when `all_link` fields is being resolved
    def all_links
      Link.all
    end

    def all_users
      User.all
    end
  end
end
