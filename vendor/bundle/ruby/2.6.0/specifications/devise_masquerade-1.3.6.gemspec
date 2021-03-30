# -*- encoding: utf-8 -*-
# stub: devise_masquerade 1.3.6 ruby lib

Gem::Specification.new do |s|
  s.name = "devise_masquerade".freeze
  s.version = "1.3.6"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Alexandr Korsak".freeze]
  s.date = "2021-03-19"
  s.description = "devise masquerade library".freeze
  s.email = ["alex.korsak@gmail.com".freeze]
  s.homepage = "http://github.com/oivoodoo/devise_masquerade".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.0.0".freeze
  s.summary = "use for login as functionallity on your admin users pages".freeze

  s.installed_by_version = "3.0.0" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>.freeze, [">= 2.0.0"])
      s.add_runtime_dependency(%q<railties>.freeze, [">= 5.2.0"])
      s.add_runtime_dependency(%q<devise>.freeze, [">= 4.7.0"])
      s.add_runtime_dependency(%q<globalid>.freeze, [">= 0.3.6"])
    else
      s.add_dependency(%q<bundler>.freeze, [">= 2.0.0"])
      s.add_dependency(%q<railties>.freeze, [">= 5.2.0"])
      s.add_dependency(%q<devise>.freeze, [">= 4.7.0"])
      s.add_dependency(%q<globalid>.freeze, [">= 0.3.6"])
    end
  else
    s.add_dependency(%q<bundler>.freeze, [">= 2.0.0"])
    s.add_dependency(%q<railties>.freeze, [">= 5.2.0"])
    s.add_dependency(%q<devise>.freeze, [">= 4.7.0"])
    s.add_dependency(%q<globalid>.freeze, [">= 0.3.6"])
  end
end
