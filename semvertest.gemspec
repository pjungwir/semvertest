$:.push File.dirname(__FILE__) + '/lib'
require 'semvertest/version'

Gem::Specification.new do |s|
  s.name = "semvertest"
  s.version = Semvertest::VERSION
  s.date = "2016-07-11"

  s.summary = "Testing semvar on rubygems"

  s.authors = ["Paul A. Jungwirth"]
  s.homepage = "http://github.com/pjungwir/semvertest"
  s.email = "pj@illuminatedcomputing.com"

  s.licenses = ["MIT"]

  s.require_paths = ["lib"]
  s.executables = []
  s.files = `git ls-files`.split("\n")
  s.test_files = `git ls-files -- {test,spec,fixtures}/*`.split("\n")

  s.add_development_dependency 'rspec', '~> 2.4.0'
  s.add_development_dependency 'bundler', '>= 0'
end

