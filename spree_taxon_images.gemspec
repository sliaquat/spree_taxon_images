# encoding: UTF-8
Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_taxon_images'
  s.version     = '0.2.0'
  s.summary     = 'Spree commmerce extension that allows adding multiple images to a taxon'
  s.description = 'Spree commmerce extension that allows adding multiple images to a taxon exposes them on the api'
  s.required_ruby_version = '>= 1.9.3'

  s.author    = 'Sanad Liaquat'
  s.email     = 'sanadhussain@gmail.com'
  s.homepage  = 'https://github.com/sliaquat'
  s.license       = "BSD"

  #s.files       = `git ls-files`.split("\n")
  #s.test_files  = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency 'spree_core', '>= 3.0'

end
