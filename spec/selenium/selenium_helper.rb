require 'selenium-webdriver'

# global vars for sites under test and selenium grid hub - maybe move to config file
SITE = "http://qa.hubbubhealth.com"
MSITE = "http://mqa.hubbubhealth.com"
APISITE = "http://qa-api.hubbubhealth.com"
HUB = "http://10.65.192.65:4444/wd/hub"


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

  	@driver = Selenium::WebDriver.for(:remote, :url => ::HUB, :desired_capabilities => sebrowser.to_sym)

  	

  }

  c.after(:all) {

  	@driver.quit

  }

}




