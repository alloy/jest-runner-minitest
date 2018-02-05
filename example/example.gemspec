
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "example/version"

Gem::Specification.new do |spec|
  spec.name          = "jest-runner-minitest-example"
  spec.version       = Example::VERSION
  spec.authors       = ["Pedro Piñera"]
  spec.email         = ["pepibumur@gmail.com"]
  spec.summary       = %q{This is an example project to try out the Jest runner}
  spec.homepage      = "https://github.com/pepibumur/jest-runner-minitest"
  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.require_paths = ["lib"]
  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
