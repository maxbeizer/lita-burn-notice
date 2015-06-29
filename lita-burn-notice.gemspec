Gem::Specification.new do |spec|
  spec.name          = "lita-burn-notice"
  spec.version       = "0.1.1"
  spec.authors       = ["Max Beizer"]
  spec.email         = ["max.beizer@gmail.com"]
  spec.description   = "Michael Westen voice overs from lita"
  spec.summary       = "A simple lita bot that returns Burn Notice voice overs"
  spec.homepage      = "https://github.com/maxbeizer/lita-burn-notice"
  spec.license       = "MIT"
  spec.metadata      = { "lita_plugin_type" => "handler" }

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "lita", ">= 4.3"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "pry-byebug"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rack-test"
  spec.add_development_dependency "rspec", ">= 3.0.0"
end
