# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'copshootcop/version'

Gem::Specification.new do |spec|
  spec.name          = "copshootcop"
  spec.version       = Copshootcop::VERSION
  spec.authors       = ["ta1kt0me"]
  spec.email         = ["p.wadachi@gmail.com"]

  spec.summary       = %q{Cop shoot cop |m|}
  spec.description   = %q{Shut automatic code review service up on rails}
  spec.homepage      = "http://localhost/"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "bin"
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.license       = "MIT"

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"

  spec.add_dependency "thor", "~> 0"
end
