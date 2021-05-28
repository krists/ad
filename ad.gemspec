# coding: utf-8

require_relative "./lib/ad/version"

Gem::Specification.new do |spec|
  spec.name          = "ad"
  spec.version       = AD::VERSION
  spec.authors       = ["Krists Ozols"]
  spec.email         = ["krists.ozols@gmail.com"]
  spec.summary       = "A wrapper around Ruby's net-ldap library to ease authentication and record finding"
  spec.homepage      = "https://github.com/krists/ad"

  spec.license = "MIT"

  spec.files         = Dir["lib/**/*.rb"]
  spec.bindir        = "exe"
  spec.executables   = []
  spec.require_paths = ["lib"]

  spec.add_dependency "net-ldap", "~> 0.17.0"
  spec.add_dependency "activesupport"

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "minitest", "~> 5.0"
  spec.add_development_dependency "rubocop"
  spec.add_development_dependency "pry", "~> 0.12"
end
