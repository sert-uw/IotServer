# -*- encoding: utf-8 -*-
# stub: get_process_mem 0.2.0 ruby lib

Gem::Specification.new do |s|
  s.name = "get_process_mem"
  s.version = "0.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Richard Schneeman"]
  s.date = "2014-06-16"
  s.description = " Get memory usage of a process in Ruby "
  s.email = ["richard.schneeman+rubygems@gmail.com"]
  s.homepage = "https://github.com/schneems/get_process_mem"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.4.5.1"
  s.summary = "Use GetProcessMem to find out the amount of RAM used by any process"

  s.installed_by_version = "2.4.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rake>, ["~> 10.1"])
    else
      s.add_dependency(%q<rake>, ["~> 10.1"])
    end
  else
    s.add_dependency(%q<rake>, ["~> 10.1"])
  end
end
