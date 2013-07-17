require 'rubygems'
require 'selenium-webdriver'
require 'debugger'

driver = Selenium::WebDriver.for :chrome
driver.get "http://dev.astoriaroad.com"

element = driver.find_element :class => "join_ribbon"
element.click

wait = Selenium::WebDriver::Wait.new(:timeout => 10)
wait.until { driver.find_element(:name =>"register_email_address") }

email = driver.find_element :name => "register_email_address"
email.send_keys("jakeklein90@gmail.com")

password = driver.find_element :name => "register_password"
password.send_keys("khoi1234")

url = driver.find_element :name => "register_desired_URL"
url.send_keys("jakeklein")

login = driver.find_element :class_name =>"register_overlay_submit"
login.click

#alert.find_element(:name => "user_email").sendKeys("khoitran")
#username.sendKeys("khoitran")
#password = driver.find_element :name => "user_password"
#password.sendKeys("123456")

=begin 
element = driver.find_element :name => "q"
element.send_keys "Cheese!"
element.submit
=end


