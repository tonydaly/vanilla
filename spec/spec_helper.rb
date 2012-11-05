require 'rubygems'
require 'bundler/setup'
require "vanilla"

RSpec.configure do |config|
  config.before :each do
    Vanilla.reset!
  end
end
