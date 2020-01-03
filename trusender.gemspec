Gem::Specification.new do |s|
  s.name               = "trusender"
  s.version            = "0.0.1"
  s.default_executable = "trusender"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Ramu"]
  s.date = %q{2020-01-03}
  s.description = %q{TruSender Ruby bindings}
  s.email = %q{bramu.ss@gmail.com}
  s.files = ["Rakefile", "lib/trusender.rb", "lib/trusender/client.rb", "bin/trusender"]
  s.test_files = ["test/test_trusender.rb"]
  s.homepage = %q{http://rubygems.org/gems/trusender}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.6.2}
  s.summary = %q{TruSender!}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end

