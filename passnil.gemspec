# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "passnil"
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Nick Booker"]
  s.date = "2012-05-21"
  s.description = "Methods to pass nils and empty strings through without running code that woul raise errors.  Replaces 'x = blah.nil? ? nil : blah.amethod'"
  s.email = ["NMBooker@gmail.com"]
  s.extra_rdoc_files = ["History.txt", "Manifest.txt", "PostInstall.txt", "README.rdoc"]
  s.files = ["History.txt", "Manifest.txt", "PostInstall.txt", "README.rdoc", "Rakefile", "lib/passnil.rb", "script/console", "script/destroy", "script/generate", "test/test_helper.rb", "test/test_passnil.rb", ".gemtest"]
  s.homepage = "http://github.com/\#{github_username}/\#{project_name}"
  s.rdoc_options = ["--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubyforge_project = "passnil"
  s.rubygems_version = "1.8.23"
  s.summary = "Logic to run methods on an object only if it's not nil.  Smoother than the ternary operator."
  s.test_files = ["test/test_passnil.rb", "test/test_helper.rb"]

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rdoc>, ["~> 3.10"])
      s.add_development_dependency(%q<newgem>, [">= 1.5.3"])
      s.add_development_dependency(%q<hoe>, ["~> 3.0"])
    else
      s.add_dependency(%q<rdoc>, ["~> 3.10"])
      s.add_dependency(%q<newgem>, [">= 1.5.3"])
      s.add_dependency(%q<hoe>, ["~> 3.0"])
    end
  else
    s.add_dependency(%q<rdoc>, ["~> 3.10"])
    s.add_dependency(%q<newgem>, [">= 1.5.3"])
    s.add_dependency(%q<hoe>, ["~> 3.0"])
  end
end
