require 'faraday'
require 'faraday_middleware'
require 'json'
require "rash"
require "vanilla/resource"
require 'vanilla/api'

module Vanilla
  class Client
    include Vanilla::API

    # Initializes a new Client object
    #
    # @param options [Hash]
    # @return [Vanilla::Client]
    def initialize(options={})
      Vanilla::Configurable.keys.each do |key|
        instance_variable_set(:"@#{key}", options[key] || Vanilla.instance_variable_get(:"@#{key}"))
      end
    end

    # Perform an HTTP GET request
    def get(path, params={}, options={})
      request(:get, path, params, options)
    end

  private
    # Returns a Faraday::Connection object
    #
    # @return [Faraday::Connection]
    def connection
      @connection ||= Faraday.new(@endpoint) do |conn|
        # conn.response :dates
        conn.response :rashify
        conn.response :json, :content_type => 'application/json'

        conn.adapter Faraday.default_adapter
      end
    end

    # Perform an HTTP request
    def request(method, path, params={}, options={})
      response = connection.run_request(method.to_sym, path, nil, {})
      response.body
    end
  end
end
