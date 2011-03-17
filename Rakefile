require 'rake'
# Commenting out this next line will fix the stupid "undefined method `gem' for main:Object" error on debian systems ಠ_ಠ
gem "rspec", "~>1.3.0"
require 'spec/rake/spectask'

require "rubygems"
require "rake/clean"
require 'yaml'

begin
  require 'hanna/rdoctask'
rescue LoadError
  require 'rake/rdoctask'
end
 
config = YAML.load_file("VERSION.yml")
task :default => ["build"]
CLEAN.include [ 'pkg', 'doc' ]
name = "domain-profiler"


desc "Run all examples with RCov"
Spec::Rake::SpecTask.new('spec:rcov') do |t|
  t.spec_files = FileList['spec/']
  t.rcov = true
  t.rcov_opts = lambda do
    IO.readlines("spec/rcov.opts").map {|l| l.chomp.split " "}.flatten
  end
end
Spec::Rake::SpecTask.new('spec') do |t|
  t.spec_files = FileList['spec/']
  t.spec_opts << '--options' << 'spec/spec.opts'
end

desc "Run all tests with RCov"
Spec::Rake::SpecTask.new('tests_with_rcov') do |t|
  t.spec_files = FileList['spec/**/*.rb']
  t.rcov = true
  t.rcov_opts = ['--exclude', 'spec']

end

begin
  require "jeweler"
  Jeweler::Tasks.new do |gem|
    gem.version = "#{config[:MAJOR]}.#{config[:MINOR]}.#{config[:PATCH]}"
    gem.name = name
    gem.rubyforge_project = gem.name
    gem.summary = "Given a domain, will tell you the decisions that the domain owner has made."
    gem.description = "Given a domain, will tell you the decisions that the domain owner has made."
    gem.email = "joel@franusic.com"
    gem.homepage = "https://github.com/jpf/domain-profiler"
    gem.authors = ["Joel Franusic"]
    gem.add_dependency("googlecharts",  ">= 0.6.5")
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: sudo gem install jeweler"
end


Rake::RDocTask.new do |rdoc|
  version = "#{config[:MAJOR]}.#{config[:MINOR]}.#{config[:PATCH]}"
  rdoc.rdoc_dir = "doc"
  rdoc.title = "#{name} #{version}"
  rdoc.rdoc_files.include("README*")
  rdoc.rdoc_files.include("LICENSE.txt")
  rdoc.rdoc_files.include("bin/*.rb")
  rdoc.rdoc_files.include("lib/**/*.rb")
end


# Rubyforge Release / Publish Tasks ==================================

#about 'Publish website to rubyforge'
task 'publish:rdoc' => 'doc/index.html' do
  #sh "scp -rp doc/* rubyforge.org:/var/www/gforge-projects/#{name}/"
end

#about 'Public release to rubyforge'
task 'publish:gem' => [:package] do |t|
  sh <<-end
    rubyforge add_release -o Any -a CHANGES.txt -f -n README.md #{name} #{name} #{@spec.version} pkg/#{name}-#{@spec.version}.gem &&
    rubyforge add_file -o Any -a CHANGES.txt -f -n README.md #{name} #{name} #{@spec.version} pkg/#{name}-#{@spec.version}.tgz 
  end
end
