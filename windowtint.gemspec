# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'windowtint/version'

Gem::Specification.new do |gem|
  gem.name          = "windowtint"
  gem.version       = Windowtint::VERSION
  gem.authors       = ["Larry Gilbert"]
  gem.email         = ["larry@L2G.to"]
  gem.description   = %q{Windowtint looks for ANSI color output options on Windows systems.
                         If ANSICON or win32console are available, it uses them. Otherwise,
                         it advises users to intall one or the other.}
  gem.summary       = %q{Handles dependencies for ANSI color output on Windows so you don't have to}
  gem.homepage      = "https://github.com/L2G/windowtint"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.signing_key   = 'gem-private.pem'  if File.exist?('gem-private.pem')
  gem.cert_chain    = ['gem-public.pem'] if File.exist?('gem-public.pem')
end
