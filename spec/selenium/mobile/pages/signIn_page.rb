class SignInPage


def initialize(driver)
@driver = driver
end



# page elements
def email_field
   @driver.find_element(:id, "user_email")
end
def password_field
    @driver.find_element(:id, "user_password")
end

# page methods/actions

def sign_in(username,password) 
	@driver.get "#{::MSITE}/users/sign_in"

	self.email_field.click
	self.email_field.send_keys(username)

	
	self.password_field.click
	self.password_field.send_keys(password)
	self.password_field.submit
end




end