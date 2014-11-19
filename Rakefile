require "html/proofer"

task :test do
    sh "bundle exec jekyll build --trace --drafts"
    HTML::Proofer.new("./_site", :favicon => true).run
end
