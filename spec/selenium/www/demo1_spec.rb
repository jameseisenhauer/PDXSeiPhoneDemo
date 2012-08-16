require 'spec_helper'



describe " Hubbub Health Build Verification Test" do
    attr_reader :driver


   


	it "Can open home page" do
      @driver.get ::SITE
      @driver.title.should eql("Hubbub")
    end

    it "Can open challenge page" do
      @driver.get ::SITE + "/challenges"
      @driver.title.should eql("Challenges")
    end

end