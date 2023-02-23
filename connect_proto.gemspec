# -*- encoding: utf-8 -*

lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "connect_proto/version"

Gem::Specification.new do |s|
  s.name        = "primary_connect_proto"
  s.version     = ConnectProto::VERSION
  s.authors     = ["Primary.Health"]
  s.email       = ["sam@primary.health"]

  s.platform    = Gem::Platform::RUBY
  s.homepage    = "https://github.com/PrimaryDotHealth/connect-proto"
  s.summary     = "Primary Connect Protobuf"
  s.description = "Protobufs for Diagnostic Ordering and Resulting"
  s.license     = "Unlicense"
  s.required_ruby_version = ">= 2.4"
  s.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  s.require_paths = ["lib", "lib/connect_proto/build", "lib/extensions"]
  s.executables = []

  s.add_runtime_dependency 'google-protobuf', '~> 3.22.0'

  s.add_development_dependency "bundler", "~> 2.2.10"
  s.add_development_dependency "rake", "~> 12.3.3"
  s.add_development_dependency 'rspec', '~> 3.6', '>= 3.6.0'
end
