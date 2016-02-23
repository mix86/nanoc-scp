Gem::Specification.new do |gem|
  gem.name          = 'nanoc-scp'
  gem.version       = '0.0.0'
  gem.summary       = 'Nanoc scp deploy plugin'
  gem.description   = 'Very simple nanoc plugin for deploy via scp'
  gem.authors       = ['Mikhail Petrov (aka mixael)']
  gem.email         = 'spambox@mix86.ru'
  gem.files         = `git ls-files`.split($/)
  gem.require_paths = ['lib']

  gem.add_development_dependency 'bundler', '~> 1.9'

  gem.homepage      = 'https://github.com/mix86/nanoc-scp'
  gem.license       = 'MIT'
end
