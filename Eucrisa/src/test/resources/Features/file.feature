Feature: Feature to test Upload functionality
 
 
  
  Scenario: verify the Upload click functionality in the share your experience page
  Given I enter the URL "https://pfizerchemistryconnectcom.test.pfizerstatic.io/organic-chemistry"
  Then I login with the cloudflare access
  When I wait for 5 seconds
  When I Scroll to the element "Email_field" - xpath "//input[@id='emailaddress']"
  When I wait for 5 seconds
  When I click on the "first_dropdown" dropdown - xpath "(//span[text()='Select one option'])[1]" and select the "Doctor" content - xpath "//span[contains(text(),'Doctoral degree')]" from the dropdown