require 'spec_helper'



describe " Sprig Health Build Verification Test" do
    attr_reader :driver




	it "Can open home page" do
      @driver.get "http://www.sprighealth.com/"
      @driver.title.should eql("Find a Doctor or Low Cost Doctor Appointments - Sprig Health")
    end

    it "Can open sign up page" do
      @driver.get "https://www.sprighealth.com/users/sign_up"
      @driver.title.should eql("Sign In or Sign Up - Sprig Health")
    end

end