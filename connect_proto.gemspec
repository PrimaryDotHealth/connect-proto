# -*- encoding: utf-8 -*

lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |s|
  s.name        = "primary_connect_proto"
  s.version     = "0.10.1"
  s.authors     = ["Primary.Health"]
  s.email       = ["sam@primary.health"]

  s.platform    = Gem::Platform::RUBY
  s.homepage    = "https://github.com/PrimaryDotHealth/connect-proto"
  s.summary     = "Primary Connect Protobuf"
  s.description = "Protobufs for Diagnostic Ordering and Resulting"
  s.license     = "Unlicense"
  s.required_ruby_version = ">= 2.4"
  s.files       = `find *`.split("\n").uniq.sort.select { |f| !f.empty? }
  s.require_paths = ["lib", "lib/connect_proto/build", "lib/extensions"]
  s.executables = []

  s.add_runtime_dependency 'google-protobuf', '= 4.0.0.rc1'

  s.add_development_dependency "bundler", "~> 2.2.10"
  s.add_development_dependency "rake", "~> 12.3.3"
  s.add_development_dependency 'rspec', '~> 3.6', '>= 3.6.0'
end
