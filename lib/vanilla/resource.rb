module Vanilla
  module Resource

    # Delegate to a Vanilla::Client
    #
    # @return [Vanilla::Client]
    def client
      @client ||= Vanilla::Client.new
    end

  private

    def method_missing(method_name, *args, &block)
      return super unless client.respond_to?(method_name)
      client.send(method_name, *args, &block)
    end
  end
end

