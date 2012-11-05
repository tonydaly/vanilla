module Vanilla
  module Configurable
    attr_accessor :endpoint, :access_token

    class << self
      def keys
        @keys ||= [
          :endpoint,
          :access_token
        ]
      end
    end

    def configure
      yield self
      self
    end

    # @return [Boolean]
    def credentials?
      credentials.values.all?
    end

    def reset!
      Vanilla::Configurable.keys.each do |key|
        instance_variable_set(:"@#{key}", nil)
      end
      self
    end
  private

    # @return [Hash]
    def credentials
      {
        endpoint: @endpoint,
        access_token: @access_token
      }

    end
  end
end


