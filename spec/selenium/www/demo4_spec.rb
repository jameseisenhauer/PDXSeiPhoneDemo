require 'spec_helper'



describe " LifeMap Build Verification Test" do
    attr_reader :driver


   

	  it "Can open home page" do
      @driver.get "https://www.lifemapco.com/"
      @driver.title.should eql("Homepage | LifeMap")
    end

    it "Can open About LifeMap page" do
      @driver.get "https://www.lifemapco.com/about-lifemap"
      @driver.title.should eql("About LifeMap | LifeMap")
    end

end