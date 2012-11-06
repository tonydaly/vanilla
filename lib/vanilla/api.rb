module Vanilla
  module API

    # Get a list of categories.
    def categories_list
      get("/api/v1/categories/list.json")
    end
  end
end
