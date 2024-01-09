Feature: Feature to test Global Header section
 
  @Regression
  Scenario: To verify that all menus are present in the Footer
  Given I enter the URL "https://eucrisauscom-test.dev.pfizerstatic.io/"
  Then I login with the cloudflare access 
  When I wait for 3 seconds
  When I Scroll to the element "Scroll_to_bottom" - xpath "//div[@class='how-works-bottom-text']"
  When I wait for 1 seconds
  Then I should verify the "About EUCRISA" link - xpath "//p[text()='About EUCRISA']" is dispalyed
  When I wait for 1 seconds
  Then I should verify the "Treating With EUCRISA" link - xpath "//p[text()='Treating With EUCRISA']" is dispalyed
  When I wait for 1 seconds
  Then I should verify the "Eczema and Your Child" link - xpath "//p[text()='Eczema and Your Child']" is dispalyed
  When I wait for 1 seconds
  Then I should verify the "Savings and Support" link - xpath "//p[text()='Savings and Support']" is dispalyed
  When I wait for 1 seconds
  Then I should verify the "More About Eczema" link - xpath "//p[text()='More About Eczema']" is dispalyed
  When I wait for 1 seconds
  Then I should verify the "EUCRISA FAQs" link - xpath "(//a[text()='EUCRISA FAQs'])[2]" is dispalyed
  
  @Regression
  Scenario: To verify and check the functionality of Learn About EUCRISA link is present in the footer
  When I wait for 3 seconds
  Then I should verify the "Learn About EUCRISA" sub-menu - xpath "(//a[text()='Learn About EUCRISA'])[2]" is displayed
  When I wait for 1 seconds
  Then I click on the "Learn About EUCRISA" menu - xpath "(//a[text()='Learn About EUCRISA'])[2]"
  When I wait for 1 seconds
  Then I should be redirected to the "https://eucrisauscom-test.dev.pfizerstatic.io/learn-about-eucrisa" page in a same tab
  When I wait for 1 seconds
  When I navigate back to the previous page
  
  @Regression
  Scenario: To verify and check the functionality of What is PDE4? link is present in the footer
  When I wait for 3 seconds
  Then I should verify the "What is PDE4?" sub-menu - xpath "//a[@id='iziow']" is displayed
  When I wait for 1 seconds
  Then I click on the "What is PDE4?" menu - xpath "//a[@id='iziow']"
  When I wait for 1 seconds
  Then I should be redirected to the "https://eucrisauscom-test.dev.pfizerstatic.io/what-is-pde4" page in a same tab
  When I wait for 1 seconds
  When I navigate back to the previous page
  
  @Regression
  Scenario: To verify and check the functionality of How to Apply EUCRISA link is present in the footer
  When I wait for 3 seconds
  Then I should verify the "How to Apply EUCRISA" sub-menu - xpath "(//a[text()='How to Apply EUCRISA'])[2]" is displayed
  When I wait for 1 seconds
  Then I click on the "How to Apply EUCRISA" menu - xpath "(//a[text()='How to Apply EUCRISA'])[2]"
  When I wait for 1 seconds
  Then I should be redirected to the "https://eucrisauscom-test.dev.pfizerstatic.io/how-to-apply-eucrisa" page in a same tab
  When I wait for 1 seconds
  When I navigate back to the previous page
  
  @Regression
  Scenario: To verify and check the functionality of Results You Can See link is present in the footer
  When I wait for 3 seconds
  Then I should verify the "Results You Can See" sub-menu - xpath "(//a[text()='Results You Can See'])[2]" is displayed
  When I wait for 1 seconds
  Then I click on the "Results You Can See" menu - xpath "(//a[text()='Results You Can See'])[2]"
  When I wait for 1 seconds
  Then I should be redirected to the "https://eucrisauscom-test.dev.pfizerstatic.io/results-you-can-see" page in a same tab
  When I wait for 1 seconds
  When I navigate back to the previous page
  
  @Regression
  Scenario: To verify and check the functionality of EUCRISA Stories link is present in the footer
  When I wait for 3 seconds
  Then I should verify the "EUCRISA Stories" sub-menu - xpath "(//a[text()='EUCRISA Stories'])[2]" is displayed
  When I wait for 1 seconds
  Then I click on the "EUCRISA Stories" menu - xpath "(//a[text()='EUCRISA Stories'])[2]"
  When I wait for 1 seconds
  Then I should be redirected to the "https://eucrisauscom-test.dev.pfizerstatic.io/eucrisa-stories" page in a same tab
  When I wait for 1 seconds
  When I navigate back to the previous page
  
  @Regression
  Scenario: To verify and check the functionality of What to Expect link is present in the footer
  When I wait for 3 seconds
  Then I should verify the "What to Expect" sub-menu - xpath "(//a[text()='What to Expect'])[2]" is displayed
  When I wait for 1 seconds
  Then I click on the "What to Expect" menu - xpath "(//a[text()='What to Expect'])[2]"
  When I wait for 1 seconds
  Then I should be redirected to the "https://eucrisauscom-test.dev.pfizerstatic.io/what-to-expect" page in a same tab
  When I wait for 1 seconds
  When I navigate back to the previous page
  
  @Regression
  Scenario: To verify and check the functionality of Safety and side effects link is present in the footer
  When I wait for 3 seconds
  Then I click on the "Safety and side effects" menu - xpath "//a[@id='idpvx']"
  When I wait for 1 seconds
  Then I should be redirected to the "https://eucrisauscom-test.dev.pfizerstatic.io/eucrisa-safety-and-side-effects" page in a same tab
  When I wait for 1 seconds
  When I navigate back to the previous page
  
  @Regression
  Scenario: To verify and check the functionality of Eczema and Babies link is present in the footer
  When I wait for 3 seconds
  Then I should verify the "Eczema and Babies" sub-menu - xpath "//a[@id='ibsuj']" is displayed
  When I wait for 1 seconds
  Then I click on the "Eczema and Babies" menu - xpath "//a[@id='ibsuj']"
  When I wait for 1 seconds
  Then I should be redirected to the "https://eucrisauscom-test.dev.pfizerstatic.io/eczema-and-babies" page in a same tab
  When I wait for 1 seconds
  When I navigate back to the previous page
  
  @Regression
  Scenario: To verify and check the functionality of Eczema Tips link is present in the footer
  When I wait for 3 seconds
  Then I should verify the "Eczema Tips" sub-menu - xpath "(//a[text()='Eczema Tips'])[2]" is displayed
  When I wait for 1 seconds
  Then I click on the "Eczema Tips" menu - xpath "(//a[text()='Eczema Tips'])[2]"
  When I wait for 1 seconds
  Then I should be redirected to the "https://eucrisauscom-test.dev.pfizerstatic.io/eczema-tips" page in a same tab
  When I wait for 1 seconds
  When I navigate back to the previous page
  
  @Regression
  Scenario: To verify and check the functionality of EUCRISA and Your Child link is present in the footer
  When I wait for 3 seconds
  Then I should verify the "EUCRISA and Your Child" sub-menu - xpath "(//a[text()='EUCRISA and Your Child'])[2]" is displayed
  When I wait for 1 seconds
  Then I click on the "EUCRISA and Your Child" menu - xpath "(//a[text()='EUCRISA and Your Child'])[2]"
  When I wait for 1 seconds
  Then I should be redirected to the "https://eucrisauscom-test.dev.pfizerstatic.io/eucrisa-and-your-child" page in a same tab
  When I wait for 1 seconds
  When I navigate back to the previous page
  
  @Regression
  Scenario: To verify and check the functionality of Pfizer Derm link is present in the footer
  When I wait for 3 seconds
  Then I click on the "Pfizer Derm " menu - xpath "(//a[text()='Pfizer Derm '])[2]"
  When I wait for 1 seconds
  Then I should be redirected to the "https://eucrisauscom-test.dev.pfizerstatic.io/pfizer-derm-patient-access" page in a same tab
  When I wait for 1 seconds
  When I navigate back to the previous page
  
  @Regression
  Scenario: To verify and check the functionality of Get a Card via Text link is present in the footer
  When I wait for 3 seconds
  Then I should verify the "Get a Card via Text" sub-menu - xpath "(//a[text()='Get a Card via Text'])[2]" is displayed
  When I wait for 1 seconds
  Then I click on the "Get a Card via Text" menu - xpath "(//a[text()='Get a Card via Text'])[2]"
  When I wait for 1 seconds
  Then I should be redirected to the "https://eucrisauscom-test.dev.pfizerstatic.io/copay-card-text" page in a same tab
  When I wait for 1 seconds
  When I navigate back to the previous page
  
  @Regression
  Scenario: To verify and check the functionality of Get a Card via Text link is present in the footer
  When I wait for 3 seconds
  Then I should verify the "Download a Card" sub-menu - xpath "(//a[text()='Download a Card'])[2]" is displayed
  When I wait for 1 seconds
  Then I click on the "Download a Card" menu - xpath "(//a[text()='Download a Card'])[2]"
  When I wait for 1 seconds
  Then I should be redirected to the "https://eucrisauscom-test.dev.pfizerstatic.io/copay-card-download" page in a same tab
  When I wait for 1 seconds
  When I navigate back to the previous page
  
  @Regression
  Scenario: To verify and check the functionality of Activate Card link is present in the footer
  When I wait for 3 seconds
  Then I should verify the "Activate Card" sub-menu - xpath "(//a[text()='Activate Card'])[2]" is displayed
  When I wait for 1 seconds
  Then I click on the "Activate Card" menu - xpath "(//a[text()='Activate Card'])[2]"
  When I wait for 1 seconds
  Then I should be redirected to the "https://eucrisauscom-test.dev.pfizerstatic.io/activate-copay-card" page in a same tab
  When I wait for 1 seconds
  When I navigate back to the previous page
  
  @Regression
  Scenario: To verify and check the functionality of Sign Up link is present in the footer
  When I wait for 3 seconds
  Then I should verify the "Sign Up" sub-menu - xpath "(//a[text()='Sign Up'])[2]" is displayed
  When I wait for 1 seconds
  Then I click on the "Sign Up" menu - xpath "(//a[text()='Sign Up'])[2]"
  When I wait for 1 seconds
  Then I should be redirected to the "https://eucrisauscom-test.dev.pfizerstatic.io/eucrisa-information-sign-up" page in a same tab
  When I wait for 1 seconds
  When I navigate back to the previous page
  
  @Regression
  Scenario: To verify and check the functionality of Pharmacy Finder link is present in the footer
  When I wait for 3 seconds
  Then I should verify the "Pharmacy Finder" sub-menu - xpath "(//a[text()='Pharmacy Finder'])[2]" is displayed
  When I wait for 1 seconds
  Then I click on the "Pharmacy Finder" menu - xpath "(//a[text()='Pharmacy Finder'])[2]"
  When I wait for 1 seconds
  Then I should be redirected to the "https://eucrisauscom-test.dev.pfizerstatic.io/pharmacy-finder" page in a same tab
  When I wait for 1 seconds
  When I navigate back to the previous page
  
  @Regression
  Scenario: To verify and check the functionality of Learn About Telemedicine link is present in the footer
  When I wait for 3 seconds
  Then I should verify the "Learn About Telemedicine" sub-menu - xpath "(//a[text()='Learn About Telemedicine'])[2]" is displayed
  When I wait for 1 seconds
  Then I click on the "Learn About Telemedicine" menu - xpath "(//a[text()='Learn About Telemedicine'])[2]"
  When I wait for 1 seconds
  Then I should be redirected to the "https://eucrisauscom-test.dev.pfizerstatic.io/learn-about-telemedicine" page in a same tab
  When I wait for 1 seconds
  When I navigate back to the previous page
  
  @Regression
  Scenario: To verify and check the functionality of A Closer Look at Eczema link is present in the footer
  When I wait for 3 seconds
  Then I should verify the "A Closer Look at Eczema" sub-menu - xpath "(//a[text()='A Closer Look at Eczema'])[2]" is displayed
  When I wait for 1 seconds
  Then I click on the "A Closer Look at Eczema" menu - xpath "(//a[text()='A Closer Look at Eczema'])[2]"
  When I wait for 1 seconds
  Then I should be redirected to the "https://eucrisauscom-test.dev.pfizerstatic.io/a-closer-look-at-eczema" page in a same tab
  When I wait for 1 seconds
  When I navigate back to the previous page
  
  @Regression
  Scenario: To verify and check the functionality of Treating Eczema link is present in the footer
  When I wait for 3 seconds
  Then I should verify the "Treating Eczema" sub-menu - xpath "(//a[text()='Treating Eczema'])[2]" is displayed
  When I wait for 1 seconds
  Then I click on the "Treating Eczema" menu - xpath "(//a[text()='Treating Eczema'])[2]"
  When I wait for 1 seconds
  Then I should be redirected to the "https://eucrisauscom-test.dev.pfizerstatic.io/treating-eczema" page in a same tab
  When I wait for 1 seconds
  When I navigate back to the previous page
  
  @Regression
  Scenario: To verify and check the functionality of EUCRISA FAQs link is present in the footer
  When I wait for 3 seconds
  Then I should verify the "EUCRISA FAQs" sub-menu - xpath "(//a[text()='EUCRISA FAQs'])[2]" is displayed
  When I wait for 1 seconds
  Then I click on the "EUCRISA FAQs" menu - xpath "(//a[text()='EUCRISA FAQs'])[2]"
  When I wait for 1 seconds
  Then I should be redirected to the "https://eucrisauscom-test.dev.pfizerstatic.io/eucrisa-frequently-asked-questions" page in a same tab
  When I wait for 1 seconds
  When I navigate back to the previous page
  
  @Regression
  Scenario: To verify and check the functionality of Terms of Use link is present in the footer
  When I wait for 3 seconds
  Then I should verify the "Terms of Use" sub-menu - xpath "//a[text()='Terms of Use']" is displayed
  When I wait for 1 seconds
  Then I click on the "Terms of Use" menu - xpath "//a[text()='Terms of Use']"
  Then I should be redirected to the "https://www.pfizer.com/general/terms" page in a new tab
  
  @Regression
  Scenario: To verify and check the functionality of Privacy Policy link is present in the footer
  When I wait for 3 seconds
  Then I should verify the "Privacy Policy" sub-menu - xpath "(//a[text()='Privacy Policy'])[1]" is displayed
  When I wait for 1 seconds
  Then I click on the "Privacy Policy" menu - xpath "(//a[text()='Privacy Policy'])[1]"
  Then I should be redirected to the "https://www.pfizer.com/privacy" page in a new tab
  
  @Regression
  Scenario: To verify and check the functionality of Contact Pfizer link is present in the footer
  When I wait for 3 seconds
  Then I should verify the "Contact Pfizer" sub-menu - xpath "//a[text()='Contact Pfizer']" is displayed
  When I wait for 1 seconds
  Then I click on the "Contact Pfizer" menu - xpath "//a[text()='Contact Pfizer']"
  Then I should be redirected to the "https://www.pfizer.com/contact" page in a new tab
  
  @Regression
  Scenario: To verify and check the functionality of Site Map link is present in the footer
  When I wait for 3 seconds
  Then I should verify the "Site Map" sub-menu - xpath "//a[text()='Site Map']" is displayed
  When I wait for 1 seconds
  Then I click on the "Site Map" menu - xpath "//a[text()='Site Map']"
  When I wait for 3 seconds
  Then I should be redirected to the "https://eucrisauscom-test.dev.pfizerstatic.io/sitemap" page in a same tab
  When I wait for 3 seconds
  When I navigate back to the previous page
  
  @Regression
  Scenario: To verify and check the functionality of fda_external link is present in the footer
  When I wait for 3 seconds
  Then I click on the "fda_external_link" menu - xpath "//a[@href='https://www.fda.gov/Safety/MedWatch/default.htm']"
  When I wait for 3 seconds
  Then I click on the "Continue_Button" menu - xpath "//button[@class='btn btn-primary']"
  Then I should be redirected to the "https://www.fda.gov/safety/medwatch-fda-safety-information-and-adverse-event-reporting-program" page in a new tab
  When I wait for 3 seconds
  Then I click on the "fda_external_link" menu - xpath "//a[@href='https://www.fda.gov/Safety/MedWatch/default.htm']"
  When I wait for 3 seconds
  Then I click on the "Stay_on_site_Button" menu - xpath "//button[@class='btn btn-secondary']"
  Then I click on the "fda_external_link" menu - xpath "//a[@href='https://www.fda.gov/Safety/MedWatch/default.htm']"
  When I wait for 3 seconds
  Then I click on the "Close_Button" menu - xpath "//button[@class='close']"
  And I will close the browser
  
  
  