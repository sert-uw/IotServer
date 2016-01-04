# -*- encoding: utf-8 -*-
# stub: unicorn-worker-killer 0.4.4 ruby lib

Gem::Specification.new do |s|
  s.name = "unicorn-worker-killer"
  s.version = "0.4.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Kazuki Ohta", "Sadayuki Furuhashi", "Jonathan Clem"]
  s.date = "2015-11-13"
  s.description = "Kill unicorn workers by memory and request counts"
  s.email = ["kazuki.ohta@gmail.com", "frsyuki@gmail.com", "jonathan@jclem.net"]
  s.homepage = "https://github.com/kzk/unicorn-worker-killer"
  s.licenses = ["GPLv2+", "Ruby 1.8"]
  s.rubygems_version = "2.4.5.1"
  s.summary = "Kill unicorn workers by memory and request counts"

  s.installed_by_version = "2.4.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<unicorn>, ["< 6", ">= 4"])
      s.add_runtime_dependency(%q<get_process_mem>, ["~> 0"])
      s.add_development_dependency(%q<rake>, [">= 0.9.2"])
    else
      s.add_dependency(%q<unicorn>, ["< 6", ">= 4"])
      s.add_dependency(%q<get_process_mem>, ["~> 0"])
      s.add_dependency(%q<rake>, [">= 0.9.2"])
    end
  else
    s.add_dependency(%q<unicorn>, ["< 6", ">= 4"])
    s.add_dependency(%q<get_process_mem>, ["~> 0"])
    s.add_dependency(%q<rake>, [">= 0.9.2"])
  end
end
