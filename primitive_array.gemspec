# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)
require 'primitive_array/version'

Gem::Specification.new do |s|
  s.name        = 'primitive_array'
  s.version     = PrimitiveArray::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['clay shentrup']
  s.email       = ['clay@brokenladder.com']
  s.homepage    = ''
  s.summary     = 'Java array primitive'
  s.description = 'Approximates a Java primitive array'

  s.add_development_dependency 'rr'
  s.add_development_dependency 'minitest'

  s.rubyforge_project = 'primitive_array'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ['lib']
end
