$:.unshift(File.join(File.dirname(__FILE__), 'lib'))

require 'nats_sub_pp/version'

Gem::Specification.new do |s|
  s.name = 'nats_sub_pp'
  s.version = NatsSubPp::VERSION
  s.summary = 'NATS subscribe with JSON colorization and bosh helper'
  s.description = s.summary
  s.homepage = 'https://github.com/mmb/nats_sub_pp'
  s.authors = ['Matthew M. Boedicker']
  s.email = %w{matthewm@boedicker.org}

  s.add_dependency 'bosh_cli', '~> 1.0.3'
  s.add_dependency 'coderay'
  s.add_dependency 'nats', '= 0.4.22'

  s.files = `git ls-files`.split("\n")
  s.executables = %w{nats-sub-pp}
end
