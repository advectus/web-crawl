# encoding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rsocial'

Gem::Specification.new do |s|
  s.add_development_dependency "rake"
  s.add_development_dependency "rspec"
  s.add_development_dependency "rspec-nc"
  s.add_development_dependency "json"
  s.add_development_dependency('selenium-webdriver', '~> 3.6.0', '>= 3.6.0')
  s.add_runtime_dependency('selenium-webdriver', '~> 3.6.0', '>= 3.6.0')
  s.description   = "A ruby social media stat crawler"
  s.date          = Time.now.utc.strftime("%Y-%m-%d")
  s.name          = 'rsocial'
  s.version       = RSocial::VERSION
  s.summary       = "A ruby social media stat crawler"
  s.authors       = ["Ed Richards"]
  s.email         = 'er@advect.us'
  s.require_paths = ["lib"]
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.homepage      = 'http://www.github.com/advectus/rsocial'
  s.license       = 'MIT'
end
