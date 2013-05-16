# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'extra_lib/version'

Gem::Specification.new do |spec|
  spec.name          = "extra_lib"
  spec.version       = ExtraLib::VERSION
  spec.authors       = ["jhjguxin"]
  spec.email         = ["864248765@qq.com"]
  spec.description   = %q{extra library for ruby from francis jiang}
  spec.summary       = %q{some extra method for ruby base class, need 'activeresource'}
  spec.homepage      = "https://github.com/jhjguxin/extra_lib"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "activeresource", "~> 3.2.9"
  spec.add_dependency 'activesupport'
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "debugger", "~> 1.2.3"
  spec.add_development_dependency 'rspec', '~> 2.13.0'
  #spec.add_development_dependency "rspec-expectations", "~> 2.13.0"
  spec.add_development_dependency "rake"
end
