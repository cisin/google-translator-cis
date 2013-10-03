Gem::Specification.new do |s|
  s.name        = 'google-translator-cis'
  s.version     = '0.0.1'
  s.authors     = ["Anuradha, CISROR Team"]
  s.date        = '2013-10-03'
  s.summary     = "Language Translator"
  s.description = "This is a gem which provides the facility to translate languages from one to another"
  s.add_dependency("rspec-rails")
  s.files =  Dir.glob("{lib,spec}/**/*")
  s.files += %w(README.md)
  s.files += %w(google-translator-cis.gemspec)
  s.require_path = "lib"
end
