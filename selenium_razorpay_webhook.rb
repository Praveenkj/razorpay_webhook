# Selenium Webdriver for Razorpay payment testing

require 'selenium-webdriver'
driver = Selenium::WebDriver.for :chrome

driver.get 'https://link_to_razorpay_webpage' # replace it with razorpay test payment page link here
driver.find_element(:name,"email").send_keys 'tester@gmail.com'
driver.find_element(:name,"phone").send_keys '7584363853'
driver.find_element(:class,"btn").click

sleep 1

driver.switch_to.frame(driver.find_element(:class, "razorpay-checkout-frame"))

if !driver.find_elements(:class,"new-method").empty?
    driver.find_elements(:class,"new-method").first.click
    elsif !driver.find_elements(:class,"payment-option").empty?
    driver.find_elements(:class,"payment-option").first.click
    else
    puts 'I am out'
end

sleep 0.3
driver.find_element(:id,"card_number").send_keys '4111111111111111'
driver.find_element(:name,"card[expiry]").send_keys '11/21'
driver.find_element(:id,"card_name").send_keys 'Praveen KJ'
driver.find_element(:id,"card_cvv").send_keys '343'
driver.find_elements(:class,"checkbox").first.click
driver.find_element(:id,"footer").click

sleep 20
