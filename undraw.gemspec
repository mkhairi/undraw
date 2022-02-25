require_relative 'lib/undraw/version'

Gem::Specification.new do |spec|
  spec.name          = 'undraw'
  spec.version       = Undraw::VERSION
  spec.authors       = ['mkhairi']
  spec.email         = ['khairi@labs.my']

  spec.summary       = 'MIT licensed illustrations by unDraw for your rails projects, https://undraw.co/illustrations'
  spec.description   = 'Embed an SVG illustrations by unDraw https://undraw.co/illustrations into your rails app. Take advantage of the on-the-fly color image generation to match your brand identity.'
  spec.homepage      = 'https://github.com/mkhairi/undraw'
  spec.license       = 'MIT'

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end

  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'inline_svg', '~>1.8.0'
end
