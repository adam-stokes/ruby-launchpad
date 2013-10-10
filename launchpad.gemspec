# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'launchpad/version'

Gem::Specification.new do |spec|
  spec.name          = "launchpad"
  spec.version       = Launchpad::VERSION
  spec.authors       = ["Adam Stokes"]
  spec.email         = ["adam.stokes@ubuntu.com"]
  spec.description   = %q{launchpad library}
  spec.summary       = %q{launchpad library}
  spec.homepage      = "https://github.com/battlemidget/ruby-launchpad"
  spec.license       = "AGPLv3"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "guard"
end
