require 'vanilla/client'

module Vanilla
  class Discussion
    extend Vanilla::Resource

    class << self
      def all(options={})
        if options.values.any?
          get("/api/v1/discussions/category.json?CategoryIdentifier=#{options[:category]}")
        else
          get("/api/v1/discussions/list.json")
        end
      end
    end
  end
end
