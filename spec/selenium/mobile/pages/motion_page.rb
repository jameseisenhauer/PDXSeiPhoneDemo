class MotionPage


def initialize(driver)
	@driver = driver
end



#### page elements

# main default page
def track_link
    @driver.find_element(:link, "Track")
end
def compare_link
    @driver.find_element(:link, "Compare")
end
def share_link
    @driver.find_element(:link, "Share")
end
def settings_link
    @driver.find_element(:link, "Settings")
end
def history_btn
    @driver.find_element(:class, "history_btn")
end


# compare sub page
def compare_today_link
    @driver.find_element(:link, "Today")
end
def compare_past7_link
    @driver.find_element(:link, "Past 7")
end
def compare_past30_link
    @driver.find_element(:link, "Past 30")
end
def compare_showall_link
    @driver.find_element(:link, "Show All")
end

# settings sub page
def settings_dailygoal_link
    @driver.find_element(:link, "My Daily Goal")
end






# page methods/actions

def actionname
	@driver.get "#{::MSITE}/somepage"

	
end




end