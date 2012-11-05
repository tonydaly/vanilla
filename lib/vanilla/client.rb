require 'faraday'

module Vanilla
  class Client
    # Initializes a new Client object
    #
    # @param options [Hash]
    # @return [Vanilla::Client]
    def initialize(options={})
      Vanilla::Configurable.keys.each do |key|
        instance_variable_set(:"@#{key}", options[key] || Vanilla.instance_variable_get(:"@#{key}"))
      end
    end

  private
    # Returns a Faraday::Connection object
    #
    # @return [Faraday::Connection]
    def connection
      @connection ||= Faraday.new(@endpoint)
    end
  end
end
