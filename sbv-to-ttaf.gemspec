# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sbv-to-ttaf/version'

Gem::Specification.new do |gem|
  gem.name          = "sbv-to-ttaf"
  gem.version       = Sbv::To::Ttaf::VERSION
  gem.authors       = ["Jack Franklin"]
  gem.email         = ["jack@jackfranklin.net"]
  gem.description   = " Convert sbv to TTAF"
  gem.summary       = "convert sbv to ttaf"
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
