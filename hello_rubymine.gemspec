require_relative 'lib/hello_rubymine/version'

Gem::Specification.new do |spec|
  spec.name          = "hello_rubymine_AStalter"
  spec.version       = HelloRubymine::VERSION
  spec.authors       = ["Alex_Stalter"]
  spec.email         = ["astalter@bridgew.edu"]

  spec.summary       = %q{"A sample ruby gem."}
  spec.homepage      = "https://github.com/Alex-Stalter"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/Alex-Stalter/hello_rubymine"
  spec.metadata["changelog_uri"] = "https://github.com/Alex-Stalter/hello_rubymine/blob/master/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
