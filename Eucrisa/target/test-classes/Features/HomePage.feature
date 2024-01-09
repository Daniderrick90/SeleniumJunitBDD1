Feature: Feature to test Upload functionality
 
 
  @Regression
  Scenario: verify the Upload click functionality in the share your experience page
  Given I enter the URL "https://abrocitinibcom-test.dev.pfizerstatic.io/share-your-experience"
  Then I login with the cloudflare access 
  When I wait for 10 seconds
  Then I click on the "Share_Your" menu - xpath "(//a[text()='SHARE YOUR '])[2]"
  When I wait for 5 seconds
  When I Scroll to the element "First,tell us" - xpath "//div[@class='share_text']"
  When I wait for 3 seconds
  When I select the "First_Yes" RadioButton - xpath "//input[@id='sye-yes']"
  When I wait for 3 seconds
  Then I take screenshot
  When I Scroll to the element "I_am" - xpath "//p[contains(text(),'I am:')]"
  When I wait for 3 seconds
  When I select the "second_No" RadioButton - xpath "(//input[@name='yourself'])[2]"
  When I wait for 3 seconds
  When I Scroll to the element "Do_You_text" - xpath "//p[contains(text(),'Do you')]"
  When I wait for 3 seconds
  When I select the "Third_No" RadioButton - xpath "//input[@id='syeresidenceno']"
  When I wait for 3 seconds
  When I check the "click_on" checkbox - xpath "//input[@id='confirm-sye']"
  When I wait for 3 seconds
  Then I click on the "Submit_Button" menu - xpath "(//button[text()='Continue to next step'])[1]"
  When I wait for 5 seconds
  When I Scroll to the element "Provide_Your" - xpath "//div[contains(text(),'Provide your')]"
  When I wait for 3 seconds
  When I enter "shashi" into the "First_Name" field - xpath "//input[@id='share-first-name']"
  When I wait for 3 seconds
  When I enter "kiran" into the "Last_Name" field - xpath "//input[@id='share-last-name']"
  When I wait for 3 seconds
  When I enter "shashi@ittdigital.com" into the "Email" field - xpath "//input[@id='share-email']"
  When I wait for 7 seconds
  Then I click on the "Continue_to_Next_Button" menu - xpath "(//button[@class='btn btn-primary next-step'])[2]"
  When I wait for 3 seconds
  When I Scroll to the element "We_love" - xpath "//div[@class='we-love']"
  When I wait for 3 seconds
  When I enter "QAtest" into the "Last_Name" field - xpath "//textarea[@id='cibinqo_story']"
  When I wait for 3 seconds
  Then I take screenshot
  When I Scroll to the element "Privacy_Policy" - xpath "//div[@class='privacy-policy']"
  When I wait for 3 seconds
  Then I click on the "Continue_to_Next_Button" menu - xpath "(//button[text()='Continue to next step'])[3]"
  When I wait for 3 seconds
  When I Scroll to the element "UploadPhotos" - xpath "//span[@class='optional']"
  When I wait for 3 seconds
  Then I will upload "src//test//resources//files//Screenshot_1.png" on the upload box - xpath "//div[@id='fileupload']/input"
  When I wait for 3 seconds
  Then I click on the "With_Cibinqo" menu - xpath "//label[text()='With CIBINQO']"
  When I wait for 3 seconds
  When I enter "12" into the "Month" field - xpath "//input[@placeholder='MM']"
  When I wait for 3 seconds
  When I enter "12" into the "Date" field - xpath "//input[@placeholder='DD']"
  When I wait for 3 seconds
  When I enter "2022" into the "Year" field - xpath "//input[@placeholder='YYYY']"
  When I wait for 3 seconds
  When I Scroll to the element "With_Cibinqo" - xpath "//label[text()='With CIBINQO']"
  When I wait for 3 seconds
  Then I click on the "Submit" menu - xpath "(//button[text()='Submit'])[2]"
  When I wait for 3 seconds
  Then I click on the "Continue_to_Next_Button" menu - xpath "(//button[text()='Continue to next step'])[4]"
  When I wait for 8 seconds
  When I Scroll to the element "Edit_Photos" - xpath "//button[text()='Edit photos']"
  When I wait for 3 seconds
  Then I click on the "Submit" menu - xpath "(//button[text()='Submit'])[1]"
  When I wait for 20 seconds
  Then I should be redirected to the "https://abrocitinibcom-test.dev.pfizerstatic.io/share-your-experience/confirmation" page in a same tab
  Then I take screenshot
  
  
  
  
  