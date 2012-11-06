require 'vanilla/client'

module Vanilla
  class Category
    extend Vanilla::Resource

    class << self
      def all
        get("/api/v1/categories/list.json").categories
      end

      def create
      end

      def update
      end

      def destroy
      end
    end
  end
end
