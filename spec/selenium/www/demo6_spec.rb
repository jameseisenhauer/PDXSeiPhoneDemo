require 'spec_helper'



describe " Asuris Northwest Health Build Verification Test" do
    attr_reader :driver


  

	it "Can open home page" do
      @driver.get "http://www.asuris.com/"
      @driver.title.should eql("Washington State Health Insurance | Asuris Northwest Health")
    end

    it "Can open About page" do
      @driver.get "http://www.asuris.com/about/"
      @driver.title.should eql("About Asuris Northwest Health")
    end

end