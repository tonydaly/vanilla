# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'vanilla/version'

Gem::Specification.new do |gem|
  gem.add_dependency 'faraday', '~> 0.8'
  gem.add_development_dependency "rspec", "~> 2.11"
  gem.name          = "vanilla"
  gem.version       = Vanilla::VERSION
  gem.authors       = ["Tony Daly"]
  gem.email         = ["tony.daly@me.com"]
  gem.description   = %q{A Ruby interface to the Vanilla Forums API}
  gem.summary       = gem.description
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
