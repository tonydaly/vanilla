require "vanilla/core_ext/kernel"
require "vanilla/version"
require "vanilla/client"
require 'vanilla/configurable'
require 'vanilla/category'
require 'vanilla/discussion'

module Vanilla
  class << self
    include Vanilla::Configurable
  end
end
