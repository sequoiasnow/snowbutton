# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'snowbutton/version'

Gem::Specification.new do |spec|
  spec.name          = "snowbutton"
  spec.version       = Snowbutton::VERSION
  spec.authors       = ["Sequoia Snow"]
  spec.email         = ["the1codemaster@gmail.com"]

  spec.summary       = %q{A simple compass extension to allow the simply beautiful styled button known as snowbutton.}
  spec.description   = %q{This extension uses scss syntax and relies on compass. It should be used in a sass project
                         for those who would improve thier button desing. The button is intended only for use centered and
                         will work improperly when pushed against sides of objects.}
  spec.homepage      = "https://github.com/the1codemaster/snowbutton"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"

  spec.add_dependency "compass"
end
