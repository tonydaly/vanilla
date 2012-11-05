require 'spec_helper'

describe Vanilla::Client do
  subject do
    client = Vanilla::Client.new(endpoint: 'EP', access_token: "AT")
    client.class_eval{public *Vanilla::Client.private_instance_methods}
    client
  end

  describe "#connection" do
    it "looks like Faraday connection" do
      expect(subject.connection).to respond_to(:run_request)
    end

    it "memoizes the connection" do
      c1, c2 = subject.connection, subject.connection
      expect(c1.object_id).to eq c2.object_id
    end
  end
end
