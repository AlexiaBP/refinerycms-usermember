Gem::Specification.new do |s|
  s.platform          = Gem::Platform::RUBY
  s.name              = 'refinerycms-usermembers'
  s.version           = '0.2.1'
  s.summary           = 'Usermembers engine for Refinery CMS'
  s.description       = 'Ruby on Rails Usermembers engine for Refinery CMS 2.0'
  s.authors           = ['n5ken', 'Slava Kravchenko']
  s.homepage          = "https://github.com/AlexiaBP/refinerycms-usermember"

  s.files         = `git ls-files`.split($\)
  s.test_files    = s.files.grep(%r{^(test|spec|features)/})
  s.require_paths = %w(lib)

  s.add_dependency "refinerycms", ">= 2.0.0"
  s.add_dependency "refinerycms-pages", ">= 2.0.0"
end
