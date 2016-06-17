require "html-proofer"

task :test do
    sh "bundle exec jekyll build --trace --drafts"
    HTMLProofer.check_directory("./_site", :check_favicon => true).run
end
