require 'vanilla/client'

module Vanilla
  class Category
    extend Vanilla::Resource

    class << self
      def all
        categories_list
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
