$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "mongoid_i18n_rails/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "mongoid_i18n_rails"
  s.version     = MongoidI18nRails::VERSION
  s.authors     = ["Leandro Moreira"]
  s.email       = ["leandro.ribeiro.moreira@gmail.com"]
  s.homepage    = "https://github.com/leandromoreira/mongoid-i18n"
  s.summary     = "Provide i18n for mongoid 4"
  s.description = "Provides i18n for mongoid 4 for Rails 4."
  s.license     = "MIT"

  s.files = Dir.glob("rails/locale/*") + Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_runtime_dependency('i18n', '~> 0.6')
  s.add_runtime_dependency('railties', '~> 4.0')
end
