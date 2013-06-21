# encoding: utf-8

require './lib/charlock_holmes/version' unless defined? CharlockHolmes::VERSION

if RUBY_VERSION =~ /1.9/
  Encoding.default_external = Encoding::UTF_8
  Encoding.default_internal = Encoding::UTF_8
end

Gem::Specification.new do |s|
  s.name = %q{charlock_holmes}
  s.version = CharlockHolmes::VERSION
  s.authors = ["Brian Lopez", "Vicent Martí"]
  s.date = Time.now.utc.strftime("%Y-%m-%d")
  s.email = %q{seniorlopez@gmail.com}
  s.extensions = ["ext/charlock_holmes/extconf.rb"]
  s.files = `git ls-files`.split("\n")
  s.homepage = %q{http://github.com/brianmario/charlock_holmes}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.4.2}
  s.summary = %q{Character encoding detection, brought to you by ICU}
  s.test_files = `git ls-files spec`.split("\n")

  # tests
  s.add_development_dependency 'rake-compiler', ">= 0.7.5"
  s.add_development_dependency 'minitest'
  # benchmarks
  s.add_development_dependency 'chardet'
end
