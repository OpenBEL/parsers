Gem::Specification.new do |spec|
  spec.name                  = 'bel_parser'
  spec.version               = File.read(
                                 File.join(
                                   File.expand_path(File.dirname(__FILE__)),
                                   'VERSION'))
  spec.summary               = %q{Parser for Biolgical Expression Language.}
  spec.description           = %q{Implements language versions 1.0 and 2.0.}
  spec.license               = 'Apache-2.0'
  spec.authors               = [
                                 'Anthony Bargnesi',
                                 'Nick Bargnesi',
                               ]
  spec.date                  = %q{2017-05-22}
  spec.email                 = %q{abargnesi@selventa.com}
  spec.files                 = [
                                 Dir.glob('lib/**/*.{rb,rl}'),
                                 __FILE__,
                                 'VERSION',
                                 'CHANGELOG.md',
                                 'LICENSE',
                                 'README.md'
                               ].flatten!
  spec.executables           = Dir.glob('bin/*').map(&File.method(:basename))
  spec.homepage              = 'https://github.com/OpenBEL/bel_parser'
  spec.require_paths         = ['lib']
  spec.required_ruby_version = '>= 2.0.0'

  if RUBY_ENGINE =~ /jruby/
    spec.platform               = 'java'
    spec.add_runtime_dependency   'sparql-client',       '~> 2.0.0'
    spec.add_runtime_dependency   'dbm-mapdb3',          '~> 0.6.0.beta'
    spec.add_runtime_dependency   'levenshtein-jruby',   '0.1.0'
  else
    spec.platform               = 'ruby'
    spec.add_runtime_dependency   'sparql-client',       '~> 2.0.0'
    spec.add_runtime_dependency   'damerau-levenshtein', '1.2.0'
  end
end
# vim: ft=ruby
