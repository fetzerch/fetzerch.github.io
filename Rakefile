# frozen_string_literal: true

require 'html-proofer'
require 'rubocop/rake_task'

Rake::TaskManager.record_task_metadata = true

task default: 'serve'

# Build site
desc 'Build site'
task :build do |t|
  puts "----- #{t.comment} -----"
  sh 'bundle exec jekyll build --trace --drafts'
  puts ''
end

# Serve site locally
desc 'Serve site locally'
task :serve do |t|
  puts "----- #{t.comment} -----"
  sh 'bundle exec jekyll serve --watch --drafts -H 127.0.0.1'
  puts ''
end

# Verify source files
namespace :verify do
  desc 'Verify the Jekyll configuration'
  task :jekyll do |t|
    puts "----- #{t.comment} -----"
    sh 'bundle exec jekyll doctor'
    puts ''
  end

  desc 'Verify Ruby sources'
  task :ruby do |t|
    puts "----- #{t.comment} -----"
    RuboCop::RakeTask.new(:rubocop) do |r|
      r.patterns = ['Rakefile']
    end
    Rake::Task['rubocop'].invoke
    puts ''
  end

  desc 'Verify Markdown documents'
  task :markdown do |t|
    puts "----- #{t.comment} -----"
    sh 'bundle exec mdl _posts *.md --style .mdl.rb'
    puts ''
  end

  desc 'Spellcheck Markdown documents'
  task :spellcheck do |t|
    puts "----- #{t.comment} -----"
    sh 'bundle exec mdspell _posts *.md --config .mdspell'
    puts ''
  end
end

desc 'Verify source files'
task verify: ['verify:jekyll', 'verify:ruby', 'verify:markdown',
              'verify:spellcheck']

# Check generated site
namespace :test do
  desc 'Verify generated HTML site (without basedir)'
  task html: ['build'] do |t|
    puts "----- #{t.comment} -----"
    HTMLProofer.check_directory(
      './_site',
      check_favicon: true, assume_extension: true, disable_external: true
    ).run
    puts ''
  end

  desc 'Verify generated HTML site (with basedir)'
  task :html_basedir do |t|
    puts "----- #{t.comment} -----"
    sh 'bundle exec jekyll build --trace --drafts ' \
       '--baseurl=/directory -d _site_basedir/directory'
    HTMLProofer.check_directory(
      './_site_basedir',
      check_favicon: true, assume_extension: true, disable_external: true
    ).run
    puts ''
  end

  desc 'Verify generated RSS feed'
  task rss: ['build'] do |t|
    puts "----- #{t.comment} -----"
    feeds = FileList['_site/*.atom']
    feeds.each do |feed|
      sh 'xmllint --noout', feed
    end
    puts ''
  end
end

desc 'Test generated site'
task test: ['test:html', 'test:rss', 'test:html_basedir']

desc 'Verify external links'
task external_links: ['build'] do |t|
  puts "----- #{t.comment} -----"
  HTMLProofer.check_directory('./_site', external_only: true, typhoeus: { timeout: 20 }).run
  puts ''
end
