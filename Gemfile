source 'https://rubygems.org'

gem 'github-pages'
gem 'jekyll-paginate'
gem 'rake'

group :verify do
 # No release contains Ruby 3.2 compatibility fixes and dependency updates.
 gem 'forspell', git: 'https://github.com/kkuprikov/forspell', ref: '6c4004f'
 gem 'mdl'
 gem 'rubocop'
end

group :test do
  gem 'html-proofer', '>=4.0'
end
