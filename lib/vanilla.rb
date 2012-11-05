require "vanilla/core_ext/kernel"
require "vanilla/version"
require "vanilla/client"
require 'vanilla/configurable'

module Vanilla
  class << self
    include Vanilla::Configurable
  end
end
