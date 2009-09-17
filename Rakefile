require 'rubygems'
require 'rake'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "livedate"
    gem.summary = "A simple Rack-middleware for parsing dates with Chronic"
    gem.description= File.read(File.join(File.dirname(__FILE__), 'README.rdoc'))
    gem.requirements = ['chronic']

    gem.author = "Erik Hansson"
    gem.email = "erik@bits2life.com"
    gem.homepage = "http://www.erikhansson.com"
    gem.platform = Gem::Platform::RUBY
    gem.required_ruby_version = '>=1.8'
    gem.files = Dir['**/*.rb'] + Dir['**/*.js'] + ['README.rdoc', 'VERSION']
    gem.executables = []
    gem.has_rdoc = false

    gem.rubyforge_project = "livedate"
    gem.add_dependency 'chronic', '>= 0.2.3'
    
    # gem is a Gem::Specification... see http://www.rubygems.org/read/chapter/20 for additional settings
  end
  Jeweler::GemcutterTasks.new
  Jeweler::RubyforgeTasks.new do |rubyforge|
    rubyforge.doc_task = "rdoc"
  end
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: sudo gem install jeweler"
end