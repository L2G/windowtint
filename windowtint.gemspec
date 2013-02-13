# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'windowtint/version'

Gem::Specification.new do |gem|
  gem.name          = "windowtint"
  gem.version       = Windowtint::VERSION
  gem.authors       = ["Larry Gilbert"]
  gem.email         = ["larry@L2G.to"]
  gem.description   = %q{TODO: Write a gem description}
  gem.summary       = %q{Handles dependencies for color (ANSI) output on Windows so you don't have to}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency('win32console')
end
