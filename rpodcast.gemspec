lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

require 'rpodcast/version'

Gem::Specification.new do |s|
  s.name        = "rpodcast"
  s.version     = RPodcast::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Tieg Zaharia", "Justin Camerer", "Michael Nutt"]
  s.homepage    = "https://github.com/mnutt/rpodcast"
  s.summary     = %q{A ruby library that helps with fetching and parsing podcast rss feeds.}

  s.required_ruby_version     = ">= 1.8.7"
  s.required_rubygems_version = ">= 1.3.6"
  s.rubyforge_project         = "rpodcast"

  s.add_dependency "hpricot"
  s.add_development_dependency "rspec", "~> 2.0"

  s.files              = Dir['lib/**/*.rb'] + Dir['[A-Z]*'] + Dir['*.rb']
  s.test_files         = Dir['spec/**/*.rb']
  s.require_paths      = ["lib"]
end
