# encoding: UTF-8
Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_flag_promotions'
  s.version     = '1.2'
  s.summary     = 'Promoted items extension for Spree'
  s.description = 'Promoted items extension for Spree'
  s.required_ruby_version = '>= 1.8.7'

  s.author            = 'huamncopy'
  s.email             = 'info@humancopy.net'
  s.homepage          = 'http://www.humancopy.net'
  s.rubyforge_project = 'spree_flag_promotions'

  #s.files         = `git ls-files`.split("\n")
  #s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency 'spree_core', '>= 0.70.0'
  s.add_development_dependency 'rspec-rails'
end

