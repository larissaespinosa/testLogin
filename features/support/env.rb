require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'

case ENV["BROWSER"]
when "firefox"
 @driver = :selenium
when "chrome"
 @driver = :selenium_chrome
when "headless"
 @driver = :selenium_chrome_headless
else
 puts "Invalid Browser"
end

Before do
    @login = Login.new
    page.current_window.resize_to(1440, 900)
end

Capybara.configure do |config|
    config.default_max_wait_time = 10
    config.default_driver = @driver
    config.app_host = "https://kabum.com.br"
end