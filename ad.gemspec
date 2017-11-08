# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "ad/version"

Gem::Specification.new do |spec|
  spec.name          = "ad"
  spec.version       = AD::VERSION
  spec.authors       = ["Krists Ozols"]
  spec.email         = ["krists.ozols@gmail.com"]
  spec.summary       = "A wrapper around Ruby's net-ldap library to ease authentication and record finding"

  spec.license = "MIT"

  spec.files         = Dir["lib/**/*.rb"]
  spec.bindir        = "exe"
  spec.executables   = []
  spec.require_paths = ["lib"]

  spec.add_dependency "net-ldap", "~> 0.15.0"
  spec.add_dependency "activesupport"

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
  spec.add_development_dependency "rubocop", "~> 0.51.0"
  spec.add_development_dependency "pry", "~> 0.11.2"
end
