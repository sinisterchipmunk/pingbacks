require 'rubygems'
require 'rake'

begin
  require 'rspec/core/rake_task'
rescue MissingSourceFile
  raise "You need RSpec 2.0 or better for development on this gem."
end

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "pingbacks"
    gem.summary = %Q{TODO: one-line summary of your gem}
    gem.description = %Q{TODO: longer description of your gem}
    gem.email = "sinisterchipmunk@gmail.com"
    gem.homepage = "http://github.com/sinisterchipmunk/pingbacks"
    gem.authors = ["Colin MacKenzie IV"]
    gem.add_development_dependency "rspec", ">= 2.0.0.beta"
    # gem is a Gem::Specification... see http://www.rubygems.org/read/chapter/20 for additional settings
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: gem install jeweler"
end

RSpec::Core::RakeTask.new(:spec) do |spec|
  spec.pattern = 'spec/**/*_spec.rb'
end

RSpec::Core::RakeTask.new(:rcov) do |spec|
  spec.pattern = 'spec/**/*_spec.rb'
  spec.rcov = true
end

task :spec => :check_dependencies

task :default => :spec

require 'rake/rdoctask'
Rake::RDocTask.new do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION') : ""

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "pingbacks #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
