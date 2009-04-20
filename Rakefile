require 'rake/gempackagetask'
require File.dirname(__FILE__) + '/lib/livedate'

spec = Gem::Specification.new do |s|
  s.name = "livedate"
  s.summary = "A simple Rack-middleware for parsing dates with Chronic"
  s.description= File.read(File.join(File.dirname(__FILE__), 'README'))
  s.requirements = ['chronic']
  s.version = Livedate::VERSION::STRING
  s.author = "Erik Hansson"
  s.email = "erik@bits2life.com"
  s.homepage = "http://www.erikhansson.com"
  s.platform = Gem::Platform::RUBY
  s.required_ruby_version = '>=1.8'
  s.files = Dir['**/*.rb'] + Dir['**/*.js'] + ['README']
  s.executables = []
  s.has_rdoc = false
  
  s.add_dependency 'chronic', '>= 0.2.3'
end

Rake::GemPackageTask.new(spec).define
