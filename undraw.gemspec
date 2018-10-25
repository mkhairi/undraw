
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "undraw/version"

Gem::Specification.new do |spec|
  spec.name          = "undraw"
  spec.version       = Undraw::VERSION
  spec.authors       = ["mkhairi"]
  spec.email         = ["khairi@labs.my"]

  spec.summary       = %q{MIT licensed illustrations by unDraw for your rails projects, https://undraw.co/illustrations}
  spec.description   = %q{Embed an SVG illustrations by unDraw https://undraw.co/illustrations into your rails app. Take advantage of the on-the-fly color image generation to match your brand identity.}
  spec.homepage      = "https://github.com/mkhairi/undraw"
  spec.license       = "MIT"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "inline_svg", "~>1.3.1"
  
  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
end
