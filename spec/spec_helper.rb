require 'rubygems'
require 'bundler/setup'
require "vanilla"
require 'rspec'
require 'webmock/rspec'

RSpec.configure do |config|
  config.before :each do
    Vanilla.reset!
  end
end

def stub_get(path)
  stub_request(:get, 'https://something.vanillaforums.com' + path)
end
