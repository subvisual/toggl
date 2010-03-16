# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{toggl}
  s.version = "0.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Koen Van der Auwera"]
  s.date = %q{2010-03-14}
  s.default_executable = %q{toggl}
  s.description = %q{Toggl provides a simple REST-style JSON API over standard HTTP - http://www.toggl.com}
  s.email = %q{koen@atog.be}
  s.executables = ["toggl"]
  s.extra_rdoc_files = [
    "LICENSE",
     "README.rdoc"
  ]
  s.files = [
    "lib/toggl.rb",
     "lib/toggl_cmd/runner.rb",
     "lib/toggl_cmd/runner_options.rb"
  ]
  s.homepage = %q{http://github.com/atog/toggl}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{Toggl api ruby gem}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<httparty>, [">= 0.5.2"])
      s.add_runtime_dependency(%q<chronic_duration>, [">= 0.9.0"])
    else
      s.add_dependency(%q<httparty>, [">= 0.5.2"])
      s.add_dependency(%q<chronic_duration>, [">= 0.9.0"])
    end
  else
    s.add_dependency(%q<httparty>, [">= 0.5.2"])
    s.add_dependency(%q<chronic_duration>, [">= 0.9.0"])
  end
end

