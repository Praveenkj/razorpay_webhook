# Selenium Webdriver for Razorpay Webhook  test

Use it for testing razorpay payment link while developing Webhook as entering account and card details every time you do **success** and **failure** test is boring.

## Installation

Make sure you have Selenium Webdriver Installed before proceeding.
[https://github.com/SeleniumHQ/selenium/tree/master/rb](https://github.com/SeleniumHQ/selenium/tree/master/rb)


## Replace link

Replace the following link in the above code to your test Razorpay payment page
```bash
driver.get 'https://link_to_razorpay_webpage'
```
and run 

```bash
ruby selenium_razorpay_webhook.rb
```

## License
[MIT](https://choosealicense.com/licenses/mit/)
