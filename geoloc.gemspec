# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'geoloc/version'

Gem::Specification.new do |spec|
  spec.name          = "geoloc"
  spec.version       = Geoloc::VERSION
  spec.authors       = ["David Lorente, Inga Nikitina"]
  spec.email         = ["david.l.castilla@gmail.com"]

  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = ""
  end

  spec.summary       = %q{Geoloc allows you to add HTML5 Geolocation in your views without dealing with javascript. }
  spec.description   = %q{Geoloc allows you to add HTML5 Geolocation in your views without dealing with javascript. Geoloc offers customizable helper methods to add custom geolocation requests that can later send back the coordinates to your server}
  spec.homepage      = "https://github.com/legendss/geoloc"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"
end
