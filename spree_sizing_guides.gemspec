# encoding: UTF-8
Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_sizing_guides'
  s.version     = '2.2.0'
  s.summary     = 'Adds Sizing guides to store'
  s.description = 'Create sizing guides in admin'
  s.required_ruby_version = '>= 1.8.7'

  s.authors           = ['Ricky Winowiecki', 'Ann Arbor T-shirt Company']
  s.email             = 'ricky@annarbortees.com'
  s.homepage          = 'http://annarbortees.com'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  version = '~> 2.2.0'
  s.add_dependency 'spree_core', version
  s.add_dependency 'spree_backend', version
  s.add_dependency 'spree_frontend', version
  s.add_dependency 'spree_api', version

  s.add_development_dependency 'capybara', '~> 2.1'
  s.add_development_dependency 'coffee-rails'
  s.add_development_dependency 'database_cleaner'
  s.add_development_dependency 'factory_girl', '~> 4.2'
  s.add_development_dependency 'ffaker'
  s.add_development_dependency 'rspec-rails',  '~> 2.13'
  s.add_development_dependency 'sass-rails', '~> 4.0.2'
  s.add_development_dependency 'selenium-webdriver'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'sqlite3'
end