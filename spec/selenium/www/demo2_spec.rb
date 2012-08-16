require 'spec_helper'



describe " Cambia Health Build Verification Test" do
    attr_reader :driver



	it "Can open home page" do
      @driver.get "http://www.cambiahealth.com"
      @driver.title.should eql("Cambia")
    end

    it "Can open Companies page" do
      @driver.get "http://cambiahealth.com/companies/index.html"
      @driver.title.should eql("Cambia - Companies")
    end

end