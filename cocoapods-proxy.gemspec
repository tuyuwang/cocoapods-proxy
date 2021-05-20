# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cocoapods-proxy/gem_version.rb'

Gem::Specification.new do |spec|
  spec.name          = 'cocoapods-proxy'
  spec.version       = CocoapodsProxy::VERSION
  spec.authors       = ['tuyw']
  spec.email         = ['18759280805@163.com']
  spec.description   = %q{git clone 通过 https://ghproxy.com 代理进行}
  spec.summary       = %q{A longer description of cocoapods-proxy.}
  spec.homepage      = 'https://github.com/tuyuwang/cocoapods-proxy.git'
  spec.license       = 'MIT'

  spec.files         = Dir['lib/**/*']
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake'
end
