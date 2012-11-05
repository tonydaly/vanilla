require "vanilla/version"
require 'vanilla/configurable'

module Vanilla
  class << self
    include Vanilla::Configurable
  end
end
