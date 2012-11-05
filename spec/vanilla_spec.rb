require 'spec_helper'

describe Vanilla do

  describe ".configure" do
    Vanilla::Configurable.keys.each do |key|
      it "sets the #{key.to_s.gsub('_', ' ')}" do
        Vanilla.configure do |config|
          config.send("#{key}=", key)
        end
        expect(Vanilla.instance_variable_get(:"@#{key}")).to eq key
      end
    end
  end

  describe ".credentials?" do
    it "returns false if any credentials are missing" do
      Vanilla.configure do |config|
        config.endpoint = 'EP'
      end
      expect(Vanilla.credentials?).to be_false
    end
    it "returns true if all credentials are present" do
      Vanilla.configure do |config|
        config.endpoint = 'EP'
        config.access_token = 'AT'
      end
      expect(Vanilla.credentials?).to be_true
    end
  end
end
