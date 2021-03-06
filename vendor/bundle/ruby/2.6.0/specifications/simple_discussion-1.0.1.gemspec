# -*- encoding: utf-8 -*-
# stub: simple_discussion 1.0.1 ruby lib

Gem::Specification.new do |s|
  s.name = "simple_discussion".freeze
  s.version = "1.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Chris Oliver".freeze]
  s.bindir = "exe".freeze
  s.date = "2020-06-14"
  s.description = "A simple, extensible Rails forum".freeze
  s.email = ["excid3@gmail.com".freeze]
  s.homepage = "https://github.com/excid3/simple_discussion".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.0.0".freeze
  s.summary = "A simple, extensible Rails forum".freeze

  s.installed_by_version = "3.0.0" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<font-awesome-sass>.freeze, [">= 4.7.0"])
      s.add_runtime_dependency(%q<friendly_id>.freeze, [">= 5.2.0"])
      s.add_runtime_dependency(%q<gravatar_image_tag>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<rails>.freeze, [">= 4.2"])
      s.add_runtime_dependency(%q<will_paginate>.freeze, [">= 3.1.0"])
    else
      s.add_dependency(%q<font-awesome-sass>.freeze, [">= 4.7.0"])
      s.add_dependency(%q<friendly_id>.freeze, [">= 5.2.0"])
      s.add_dependency(%q<gravatar_image_tag>.freeze, [">= 0"])
      s.add_dependency(%q<rails>.freeze, [">= 4.2"])
      s.add_dependency(%q<will_paginate>.freeze, [">= 3.1.0"])
    end
  else
    s.add_dependency(%q<font-awesome-sass>.freeze, [">= 4.7.0"])
    s.add_dependency(%q<friendly_id>.freeze, [">= 5.2.0"])
    s.add_dependency(%q<gravatar_image_tag>.freeze, [">= 0"])
    s.add_dependency(%q<rails>.freeze, [">= 4.2"])
    s.add_dependency(%q<will_paginate>.freeze, [">= 3.1.0"])
  end
end
