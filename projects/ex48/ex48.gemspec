# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "EX48"
  spec.version       = '1.0'
  spec.authors       = ["Roberto Carrillo"]
  spec.email         = ["contact@rcovar00.me"]
  spec.summary       = %q{Short summary of your project}
  spec.description   = %q{Longer description of your project.}
  spec.homepage      = "http://domainforproject.com/"
  spec.license       = "MIT"

  spec.files         = ['lib/ex48.rb']
  spec.executables   = ['bin/ex48']
  spec.test_files    = ['tests/ex48.rb']
  spec.require_paths = ["lib"]
end
