# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)
require 'its_a_map/version'

Gem::Specification.new do |gem|
  gem.name     = 'its_a_map'
  gem.version  = ItsAMap::VERSION
  gem.authors  = [ 'Hannes Tydén' ]
  gem.email    = [ 'hannes@tyden.name' ]
  gem.homepage = 'http://github.com/hannestyden/its_a_map'
  gem.summary  = 'Call it by its real name.'

  gem.description = <<-DESCRIPTION
  What Ruby calls `Hash` is actually a map, a dictionary or an associative array.
  DESCRIPTION

  gem.files      = `git ls-files`.split("\n")
  gem.test_files = `git ls-files -- {test,spec,features}/*`.split("\n")

  gem.executables =
    `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }

  gem.require_paths = [ 'lib' ]

  gem.add_dependency('minitest', '~> 4.4')
end
