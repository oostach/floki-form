# frozen_string_literal: true

require_relative 'lib/floki_form/version'

Gem::Specification.new do |spec|
  spec.name = 'floki-form'
  spec.version = FlokiForm::VERSION
  spec.authors = ['Oleksandr Ostach']
  spec.email = ['oleksandr.ostach@gmail.com']

  spec.summary = 'Wrapper around the Rails on Rails FormBuilder interface'
  # spec.description = 'TODO: Write a longer description or delete this line.'
  spec.homepage = 'https://github.com/oostach/floki_form'
  spec.license = 'MIT'
  spec.required_ruby_version = '>= 3.2.0'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = spec.homepage
  spec.metadata['changelog_uri'] = 'https://github.com/oostach/floki_form/blob/main/CHANGELOG.md'
  spec.metadata['rubygems_mfa_required'] = 'true'

  spec.add_dependency 'actionpack', '>= 7.0.4.3'
  spec.add_dependency 'activemodel', '>= 7.0.4.3'
  spec.add_dependency 'railties', '>= 7.0.4.3'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end

  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']
end
