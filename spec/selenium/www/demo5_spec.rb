require 'spec_helper'



describe " Regence Build Verification Test" do
    attr_reader :driver


  


	it "Can open home page" do
      @driver.get "http://www.regence.com/"
      @driver.title.should eql("Regence")
    end

    it "Can open about page" do
      @driver.get "http://www.regence.com/about/"
      @driver.title.should eql("About The Regence Group")
    end

end