# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{domain-profiler}
  s.version = "0.5.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Joel Franusic"]
  s.date = %q{2011-03-17}
  s.description = %q{Given a domain, will tell you the decisions that the domain owner has made.}
  s.email = %q{joel@franusic.com}
  s.extra_rdoc_files = [
    "README.md",
     "TODO"
  ]
  s.files = [
    "README.md",
     "Rakefile",
     "TODO",
     "cache/.gitignore",
     "config/name-lookups.yaml",
     "domain-profiler-mind-map.mm",
     "github-list",
     "github.html",
     "lib/domain-profiler.rb",
     "lib/domain-profiler/dns.rb",
     "lib/domain-profiler/fetch-info.rb",
     "lib/domain-profiler/information.rb",
     "lib/domain-profiler/ip-to-asn.rb",
     "lib/domain-profiler/name.rb",
     "lib/domain-profiler/ssl.rb",
     "lib/domain-profiler/whois-orgname.rb",
     "lib/domain-profiler/whois.rb",
     "list/alexa-top-100",
     "list/quantcast-top-100",
     "list/time-top-50",
     "list/ycombinator",
     "profile",
     "profile-list",
     "public/quantcast.html",
     "public/sorttable.js",
     "public/style.css",
     "quantcast.html",
     "spec/dns/dns_spec.rb",
     "spec/dns/fixtures/dns.raw.dump",
     "spec/dns/fixtures/ehow.com.raw.dump",
     "spec/dns/fixtures/furbo.org.raw.dump",
     "spec/dns/fixtures/go.com.raw.dump",
     "spec/domain-profiler_spec.rb",
     "spec/ip-to-asn/ip-to-asn_spec.rb",
     "spec/name/name_spec.rb",
     "spec/rcov.opts",
     "spec/spec.opts",
     "spec/spec_helper.rb",
     "spec/ssl/fixtures/openssl.raw.dump",
     "spec/ssl/fixtures/openssl.single.raw.dump",
     "spec/ssl/ssl_spec.rb",
     "spec/whois-orgname/whois_spec.rb",
     "spec/whois/fixtures/furbo.org.raw.dump",
     "spec/whois/fixtures/zombo.com.raw.dump",
     "spec/whois/whois_spec.rb",
     "techstars-list",
     "techstars.html",
     "view/html",
     "view/text",
     "ycombinator-list",
     "ycombinator.html"
  ]
  s.homepage = %q{https://github.com/jpf/domain-profiler}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{domain-profiler}
  s.rubygems_version = %q{1.5.2}
  s.summary = %q{Given a domain, will tell you the decisions that the domain owner has made.}
  s.test_files = [
    "spec/dns/dns_spec.rb",
     "spec/domain-profiler_spec.rb",
     "spec/ip-to-asn/ip-to-asn_spec.rb",
     "spec/name/name_spec.rb",
     "spec/spec_helper.rb",
     "spec/ssl/ssl_spec.rb",
     "spec/whois/whois_spec.rb",
     "spec/whois-orgname/whois_spec.rb"
  ]

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<googlecharts>, [">= 0.6.5"])
    else
      s.add_dependency(%q<googlecharts>, [">= 0.6.5"])
    end
  else
    s.add_dependency(%q<googlecharts>, [">= 0.6.5"])
  end
end

