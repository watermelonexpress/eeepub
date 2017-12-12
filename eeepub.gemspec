lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'eeepub/version'

Gem::Specification.new do |spec|
  spec.name = 'eeepub'
  spec.version = EeePub::VERSION
  spec.platform = Gem::Platform::RUBY
  spec.authors = ['jugyo']
  spec.email = ['jugyo.org@gmail.com']

  spec.summary = 'ePub generator'
  spec.description = 'EeePub is a Ruby ePub generator.'
  spec.homepage = 'http://github.com/jugyo/eeepub'

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features|.keep)/})
  end
  spec.test_files = Dir['spec/**/*']
  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'nokogiri'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rr'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'rubocop'
  spec.add_development_dependency 'simplecov'

  spec.add_runtime_dependency 'builder'
  spec.add_runtime_dependency 'rubyzip'
end
