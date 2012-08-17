require 'selenium-webdriver'

# global vars for sites under test and selenium grid hub - maybe move to config file
SITE = "http://www.hubbubhealth.com"
MSITE = "http://m.hubbubhealth.com"
APISITE = "http://api.hubbubhealth.com"
HUB = "http://localhost:4444/wd/hub"
SAUCEHUB = "http://xxxxxxx@ondemand.saucelabs.com:80/wd/hub"


# check if browser enviorment set.  If not set it to firefox.  Needed for single execution of spec.  Might try to impliment rake task for this instead

if ENV['SEBROWSER_ENV'] == nil
sebrowser = 'firefox'
puts 'not set'
else
sebrowser=ENV['SEBROWSER_ENV']
puts 'set'
puts ENV['SEBROWSER_ENV']
end


#global rspec methods ensures entire spec file uses same driver instance for authentication purpose
RSpec.configure { |c|
  
  c.before(:all) {

    puts sebrowser  

    case sebrowser 
    when "firefox" then
    	@driver = Selenium::WebDriver.for(:remote, :url => ::HUB, :desired_capabilities => sebrowser.to_sym)
    when "iphone" then
    	@driver = Selenium::WebDriver.for(:remote, :url => ::HUB, :desired_capabilities => sebrowser.to_sym)
    when "msauce" then
    	caps = Selenium::WebDriver::Remote::Capabilities.iphone
    	caps[:tags] = "portrait"
    	 caps[:name] = "Hubbub Mobile Web on iPhone Safari"
    	@driver = Selenium::WebDriver.for(:remote, :url => ::SAUCEHUB, :desired_capabilities => caps)
    when "wwwsauce" then
    	caps = Selenium::WebDriver::Remote::Capabilities.firefox
    	 caps[:name] = "Hubbub WWW on Firefox"
    	@driver = Selenium::WebDriver.for(:remote, :url => ::SAUCEHUB, :desired_capabilities => caps)
    else puts "no driver set"
    end
 
  	


  }

  c.after(:all) {

  	@driver.quit

  }

}




