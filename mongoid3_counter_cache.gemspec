# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "mongoid3_counter_cache/version"

Gem::Specification.new do |s|
  s.name        = "mongoid3_counter_cache"
  s.version     = Mongoid3CounterCache::VERSION
  s.authors     = ["Niels Vandekeybus"]
  s.email       = ["nvdk@arguslabs.be"]
  s.homepage    = ""
  s.summary     = "Easy count caches for mongoid"
  s.description = "Simple method to auto update count caches in (related)  mongo documents. This uses callbacks"

  s.rubyforge_project = "mongoid3_counter_cache"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  s.add_runtime_dependency "mongoid", "~> 3.0.0"
end
