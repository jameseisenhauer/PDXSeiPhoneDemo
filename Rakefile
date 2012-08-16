require 'rubygems'
require 'rake'
require 'ci/reporter/rake/rspec' 

namespace :selenium do




desc "Runs www selenium tests in firefox"
task :www  => "ci:setup:rspec" do
    puts "$$$$ Running WWW selenium tests $$$$$"
    SEBROWSER_ENV = ENV['SEBROWSER_ENV'] = "firefox"
    puts ENV['SEBROWSER_ENV']
    puts %x{parallel_rspec spec/selenium/www -n 6}
   
  end


desc "Runs mobile web selenium tests on iphone"
task :mobile  => "ci:setup:rspec" do
   puts "$$$$ Running MOBILE selenium tests $$$$$"
   SEBROWSER_ENV = ENV['SEBROWSER_ENV'] = "iphone"
   puts ENV['SEBROWSER_ENV']
   puts %x{parallel_rspec spec/selenium/mobile -n 6}
  end

desc "Runs mobile web selenium tests on iphone in sauce labs"
task :msauce  => "ci:setup:rspec" do
   puts "$$$$ Running MOBILE selenium tests in Sauce $$$$$"
   SEBROWSER_ENV = ENV['SEBROWSER_ENV'] = "msauce"
   puts ENV['SEBROWSER_ENV']
   puts %x{parallel_rspec spec/selenium/mobile -n 6}
  end

end