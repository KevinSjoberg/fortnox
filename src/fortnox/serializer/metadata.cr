module Fortnox::Serializer
  struct Metadata
    JSON.mapping({
      total_resources: {type: Int32, key: "@TotalResources"},
      total_pages:     {type: Int32, key: "@TotalPages"},
      current_page:    {type: Int32, key: "@CurrentPage"},
    })
  end
end
