# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

require 'wanikani/version'

Gem::Specification.new do |s|
  s.name = "wanikani"
  s.version = WaniKani::VERSION
  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Tony Miller"]
  s.date = "2013-06-18"
  s.description = "very simple wrapper around WaniKani's api"
  s.email = "mcfiredrill@gmail.com"
  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.homepage = "http://github.com/mcfiredrill/wanikani.rb"
  s.licenses = ["MIT"]
  s.rdoc_options = ["--main", "README.md"]
  s.require_paths = ["lib"]
  
  s.rubygems_version = "1.8.25"
  s.summary = "very simple wrapper around WaniKani's api"

  s.add_dependency "httparty"
end
