# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'executrix/version'

Gem::Specification.new do |gem|
  gem.name        = 'executrix'
  gem.version     = Executrix::VERSION
  gem.authors     = ['Jorge Valdivia', 'Leif Gensert']
  gem.email       = ['jorge@valdivia.me', 'leif@propertybase.com']
  gem.homepage    = 'https://github.com/propertybase/executrix'
  gem.summary     = %q{Ruby support for the Salesforce Bulk API}
  gem.description = %q{This gem provides a super simple interface for the Salesforce Bulk API. It provides support for insert, update, upsert, delete, and query.}
  gem.license     = 'MIT'
  gem.post_install_message = 'Executrix is not actively maintained anymore. Please consider switching to its predecessor: Bulkforce (http://github.com/propertybase/bulkforce)'

  gem.rubyforge_project = 'executrix'

  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.require_paths = ["lib"]

  gem.add_dependency 'rake'
  gem.add_dependency 'json'
  gem.add_dependency 'nori'
  gem.add_dependency 'nokogiri'
  gem.add_dependency 'rubyzip'
  gem.add_development_dependency 'rspec', '< 3.3'
  gem.add_development_dependency 'webmock', '< 1.21'
  if RUBY_ENGINE == 'rbx'
    gem.add_dependency 'rubysl', '< 2.2'
    gem.add_development_dependency 'racc', '< 1.5'
    gem.add_development_dependency 'rubinius-coverage', '< 2.1'
  end
end
