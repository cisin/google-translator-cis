Gem::Specification.new do |s|
  s.name        = 'google-translator-cis'
  s.version     = '0.0.1'

  s.authors     = ["Anuradha Dindorkar"]
  s.email       = 'anuradha.d@cisinlabs.com'
  s.date        = '2013-09-27'
  s.summary     = "Language Translator"
  s.description = "This is a gem which provides the facility to translate languages from one to another"
  s.homepage    = 'https://github.com/anuradha-d/google-translator-cis'

  s.add_dependency("rspec-rails")
  s.files =  Dir.glob("{lib,spec}/**/*")
  s.files += %w(README.md)
  s.files += %w(google-translator-cis.gemspec)
  s.require_path = "lib"
end
