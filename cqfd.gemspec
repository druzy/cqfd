
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "cqfd/version"

Gem::Specification.new do |spec|
  spec.name          = "cqfd"
  spec.version       = Cqfd::VERSION
  spec.authors       = ["Jonathan Le Greneur"]
  spec.email         = ["jonathan.legreneur@free.fr"]

  spec.summary       = %q{Demonstrate everythings}
  spec.description   = %q{cqfd want to demonstrate a maximum a things}
  spec.homepage      = "https://github.com/druzy/cqfd"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "bin"
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
