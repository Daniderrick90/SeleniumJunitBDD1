Feature: Feature to test Global Header section
 
  @Regression
  Scenario: Check if user verify the Full Prescribing Information, En Español, Patient Information,Important Safety Information,Indication & Healthcare Professionals present in the Header section
  Given I enter the URL "https://eucrisauscom-test.dev.pfizerstatic.io/"
  Then I login with the cloudflare access 
  When I wait for 3 seconds
  Then I should verify the "Full Prescribing Information" link - xpath "//a[@id='ieid']" is dispalyed
  When I wait for 1 seconds
  Then I should verify the "En Español" link - xpath "//a[text()='En Español']" is dispalyed
  When I wait for 1 seconds
  Then I should verify the "Patient Information" link - xpath "(//a[text()='Patient Information'])[1]" is dispalyed
  When I wait for 1 seconds
  Then I should verify the "Important Safety Information" link - xpath "//a[@id='icetd']" is dispalyed
  When I wait for 1 seconds
  Then I should verify the "Indication" link - xpath "//a[@id='iamwa']" is dispalyed
  When I wait for 1 seconds
  Then I should verify the "Healthcare Professionals" link - xpath "//a[@id='istsf']" is dispalyed
  When I wait for 2 seconds
  
  @Regression
  Scenario: verify the Full Prescribing Information click functionality in the Header
  When I wait for 3 seconds
  Then I click on the "Full Prescribing Information" menu - xpath "//a[@id='ieid']"
  When I wait for 3 seconds
  Then I should be redirected to the "https://labeling.pfizer.com/ShowLabeling.aspx?id=5331" page in a new tab
  
  @Regression
  Scenario: verify the En Español click functionality in the Header
  When I wait for 3 seconds
  Then I click on the "En Español" menu - xpath "//a[text()='En Español']"
  When I wait for 3 seconds
  Then I should be redirected to the "https://eucrisauscom-test.dev.pfizerstatic.io/sites/default/files/spanish_pi.pdf" page in a new tab
  
  @Regression
  Scenario: verify the Patient Information click functionality in the Header
  When I wait for 3 seconds
  Then I click on the "Patient Information" menu - xpath "(//a[text()='Patient Information'])[1]"
  When I wait for 3 seconds
  Then I should be redirected to the "https://labeling.pfizer.com/ShowLabeling.aspx?id=5331&Section=MedGuide#section-15" page in a new tab
  
  @Regression
  Scenario: verify the Important Safety Information click functionality in the Header
  When I wait for 3 seconds
  Then I click on the "Important Safety Information" menu - xpath "//a[@id='icetd']"
  When I wait for 3 seconds
  Then I click on the "Full Prescribing Information" menu - xpath "(//a[text()='Full Prescribing Information'])[3]"
  Then I should be redirected to the "https://labeling.pfizer.com/ShowLabeling.aspx?id=5331" page in a new tab
  When I wait for 3 seconds
  Then I click on the "close-button_on_pop_up" menu - xpath "//button[@id='cboxClose']"
  
  @Regression
  Scenario: verify the Indication mouseover functionality in the Header
  When I wait for 3 seconds
  When I mouseover on the "Indication" - xpath "//a[@id='iamwa']"
  When I wait for 3 seconds
  Then I click on the "Eucrisa_logo" menu - xpath "//a[@id='iqwvo']"
  When I wait for 3 seconds
  
  @Regression
  Scenario: verify the Healthcare Professionals click functionality in the Header
  Then I click on the "Healthcare Professionals" menu - xpath "//a[@id='istsf']"
  When I wait for 3 seconds
  Then I click on the "Continue_Button" menu - xpath "//button[@class='btn btn-primary']"
  Then I should be redirected to the "https://eucrisa.pfizerpro.com/" page in a new tab
  When I wait for 3 seconds
  Then I click on the "Healthcare Professionals" menu - xpath "//a[@id='istsf']"
  When I wait for 3 seconds
  Then I click on the "Stay_on_site_Button" menu - xpath "//button[@class='btn btn-secondary']"
  Then I click on the "Healthcare Professionals" menu - xpath "//a[@id='istsf']"
  When I wait for 3 seconds
  Then I click on the "Close_Button" menu - xpath "//button[@class='close']"
  
  @Regression
  Scenario: To verify that all menus are present in the Header
  When I wait for 3 seconds
  Then I should verify the "About EUCRISA" link - xpath "//a[text()='About EUCRISA ']" is dispalyed
  When I wait for 1 seconds
  Then I should verify the "Treating With EUCRISA" link - xpath "//a[@id='izoyf']" is dispalyed
  When I wait for 1 seconds
  Then I should verify the "Eczema and Your Child" link - xpath "//a[text()='Eczema and Your Child ']" is dispalyed
  When I wait for 1 seconds
  Then I should verify the "Savings and Support" link - xpath "//a[text()='Savings and Support ']" is dispalyed
  When I wait for 1 seconds
  Then I should verify the "More About Eczema" link - xpath "//a[text()='More About Eczema ']" is dispalyed
  When I wait for 1 seconds
  Then I should verify the "EUCRISA FAQs" link - xpath "//a[@id='iooway']" is dispalyed
  
  @Regression
  Scenario: To verify and check the functionality of Learn About EUCRISA sub-menu is present in the About Eucrisa menu
  When I wait for 3 seconds
  Then I click on the "About EUCRISA " menu - xpath "//a[text()='About EUCRISA ']"
  When I wait for 1 seconds
  Then I should verify the "Learn About EUCRISA" sub-menu - xpath "(//a[text()='Learn About EUCRISA'])[1]" is displayed
  When I wait for 1 seconds
  Then I click on the "Learn About EUCRISA" menu - xpath "(//a[text()='Learn About EUCRISA'])[1]"
  When I wait for 1 seconds
  Then I should be redirected to the "https://eucrisauscom-test.dev.pfizerstatic.io/learn-about-eucrisa" page in a same tab
  When I wait for 1 seconds
  When I navigate back to the previous page
  
  @Regression
  Scenario: To verify and check the functionality of What is PDE4? sub-menu is present in the About Eucrisa menu
  When I wait for 3 seconds
  Then I click on the "About EUCRISA " menu - xpath "//a[text()='About EUCRISA ']"
  When I wait for 1 seconds
  Then I should verify the "What is PDE4?" sub-menu - xpath "//a[@id='ianal']" is displayed
  When I wait for 1 seconds
  Then I click on the "What is PDE4?" menu - xpath "//a[@id='ianal']"
  When I wait for 1 seconds
  Then I should be redirected to the "https://eucrisauscom-test.dev.pfizerstatic.io/what-is-pde4" page in a same tab
  When I wait for 1 seconds
  When I navigate back to the previous page
  
  @Regression
  Scenario: To verify and check the functionality of How to Apply EUCRISA sub-menu is present in the About Eucrisa menu
  When I wait for 3 seconds
  Then I click on the "About EUCRISA " menu - xpath "//a[text()='About EUCRISA ']"
  When I wait for 1 seconds
  Then I should verify the "How to Apply EUCRISA" sub-menu - xpath "(//a[text()='How to Apply EUCRISA'])[1]" is displayed
  When I wait for 1 seconds
  Then I click on the "How to Apply EUCRISA" menu - xpath "(//a[text()='How to Apply EUCRISA'])[1]"
  When I wait for 1 seconds
  Then I should be redirected to the "https://eucrisauscom-test.dev.pfizerstatic.io/how-to-apply-eucrisa" page in a same tab
  When I wait for 1 seconds
  When I navigate back to the previous page
  
  @Regression
  Scenario: To verify and check the functionality of Results You Can See sub-menu is present in the Treating with Eucrisa menu
  When I wait for 3 seconds
  Then I click on the "Treating With EUCRISA " menu - xpath "//a[@id='izoyf']"
  When I wait for 1 seconds
  Then I should verify the "Results You Can See" sub-menu - xpath "(//a[text()='Results You Can See'])[1]" is displayed
  When I wait for 1 seconds
  Then I click on the "Results You Can See" menu - xpath "(//a[text()='Results You Can See'])[1]"
  When I wait for 1 seconds
  Then I should be redirected to the "https://eucrisauscom-test.dev.pfizerstatic.io/results-you-can-see" page in a same tab
  When I wait for 1 seconds
  When I navigate back to the previous page
  
  @Regression
  Scenario: To verify and check the functionality of EUCRISA Stories sub-menu is present in the Treating with Eucrisa menu
  When I wait for 3 seconds
  Then I click on the "Treating With EUCRISA " menu - xpath "//a[@id='izoyf']"
  When I wait for 1 seconds
  Then I should verify the "EUCRISA Stories" sub-menu - xpath "(//a[text()='EUCRISA Stories'])[1]" is displayed
  When I wait for 1 seconds
  Then I click on the "EUCRISA Stories" menu - xpath "(//a[text()='EUCRISA Stories'])[1]"
  When I wait for 1 seconds
  Then I should be redirected to the "https://eucrisauscom-test.dev.pfizerstatic.io/eucrisa-stories" page in a same tab
  When I wait for 1 seconds
  When I navigate back to the previous page
  
  @Regression
  Scenario: To verify and check the functionality of What to Expect sub-menu is present in the Treating with Eucrisa menu
  When I wait for 3 seconds
  Then I click on the "Treating With EUCRISA " menu - xpath "//a[@id='izoyf']"
  When I wait for 1 seconds
  Then I should verify the "What to Expect" sub-menu - xpath "(//a[text()='What to Expect'])[1]" is displayed
  When I wait for 1 seconds
  Then I click on the "What to Expect" menu - xpath "(//a[text()='What to Expect'])[1]"
  When I wait for 1 seconds
  Then I should be redirected to the "https://eucrisauscom-test.dev.pfizerstatic.io/what-to-expect" page in a same tab
  When I wait for 1 seconds
  When I navigate back to the previous page
  
  @Regression
  Scenario: To verify and check the functionality of Safety and Side Effects sub-menu is present in the Treating with Eucrisa menu
  When I wait for 3 seconds
  Then I click on the "Treating With EUCRISA " menu - xpath "//a[@id='izoyf']"
  When I wait for 1 seconds
  Then I should verify the "Safety and Side Effects" sub-menu - xpath "(//a[text()='Safety and Side Effects'])[1]" is displayed
  When I wait for 1 seconds
  Then I click on the "Safety and Side Effects" menu - xpath "(//a[text()='Safety and Side Effects'])[1]"
  When I wait for 1 seconds
  Then I should be redirected to the "https://eucrisauscom-test.dev.pfizerstatic.io/eucrisa-safety-and-side-effects" page in a same tab
  When I wait for 1 seconds
  When I navigate back to the previous page
  
  @Regression
  Scenario: To verify and check the functionality of Eczema and Babies sub-menu is present in the Eczema and Your Child  menu
  When I wait for 3 seconds
  Then I click on the "Eczema and Your Child " menu - xpath "(//a[text()='Eczema and Your Child '])[1]"
  When I wait for 1 seconds
  Then I should verify the "Eczema and Babies" sub-menu - xpath "//a[@id='iyiph']" is displayed
  When I wait for 1 seconds
  Then I click on the "Eczema and Babies" menu - xpath "//a[@id='iyiph']"
  When I wait for 1 seconds
  Then I should be redirected to the "https://eucrisauscom-test.dev.pfizerstatic.io/eczema-and-babies" page in a same tab
  When I wait for 1 seconds
  When I navigate back to the previous page
  
  @Regression
  Scenario: To verify and check the functionality of Eczema Tips sub-menu is present in the Eczema and Your Child  menu
  When I wait for 3 seconds
  Then I click on the "Eczema and Your Child " menu - xpath "(//a[text()='Eczema and Your Child '])[1]"
  When I wait for 1 seconds
  Then I should verify the "Eczema Tips" sub-menu - xpath "(//a[text()='Eczema Tips'])[1]" is displayed
  When I wait for 1 seconds
  Then I click on the "Eczema Tips" menu - xpath "(//a[text()='Eczema Tips'])[1]"
  When I wait for 1 seconds
  Then I should be redirected to the "https://eucrisauscom-test.dev.pfizerstatic.io/eczema-tips" page in a same tab
  When I wait for 1 seconds
  When I navigate back to the previous page
  
  @Regression
  Scenario: To verify and check the functionality of EUCRISA and Your Child sub-menu is present in the Eczema and Your Child  menu
  When I wait for 3 seconds
  Then I click on the "Eczema and Your Child " menu - xpath "(//a[text()='Eczema and Your Child '])[1]"
  When I wait for 1 seconds
  Then I should verify the "EUCRISA and Your Child" sub-menu - xpath "(//a[text()='EUCRISA and Your Child'])[1]" is displayed
  When I wait for 1 seconds
  Then I click on the "EUCRISA and Your Child" menu - xpath "(//a[text()='EUCRISA and Your Child'])[1]"
  When I wait for 1 seconds
  Then I should be redirected to the "https://eucrisauscom-test.dev.pfizerstatic.io/eucrisa-and-your-child" page in a same tab
  When I wait for 1 seconds
  When I navigate back to the previous page
  
  @Regression
  Scenario: To verify and check the functionality of Pfizer Derm  sub-menu is present in the Savings and Support  menu
  When I wait for 3 seconds
  Then I click on the "Savings and Support " menu - xpath "(//a[text()='Savings and Support '])[1]"
  When I wait for 1 seconds
  Then I click on the "Pfizer Derm " menu - xpath "(//a[text()='Pfizer Derm '])[1]"
  When I wait for 1 seconds
  Then I should be redirected to the "https://eucrisauscom-test.dev.pfizerstatic.io/pfizer-derm-patient-access" page in a same tab
  When I wait for 1 seconds
  When I navigate back to the previous page
  
  @Regression
  Scenario: To verify and check the functionality of Get a Card via Text sub-menu is present in the Savings and Support  menu
  When I wait for 3 seconds
  Then I click on the "Savings and Support " menu - xpath "(//a[text()='Savings and Support '])[1]"
  When I wait for 1 seconds
  Then I should verify the "Get a Card via Text" sub-menu - xpath "//a[@id='ieldy']" is displayed
  When I wait for 1 seconds
  Then I click on the "Get a Card via Text" menu - xpath "//a[@id='ieldy']"
  When I wait for 1 seconds
  Then I should be redirected to the "https://eucrisauscom-test.dev.pfizerstatic.io/copay-card-text" page in a same tab
  When I wait for 1 seconds
  When I navigate back to the previous page
  
  @Regression
  Scenario: To verify and check the functionality of Download a Card sub-menu is present in the Savings and Support  menu
  When I wait for 3 seconds
  Then I click on the "Savings and Support " menu - xpath "(//a[text()='Savings and Support '])[1]"
  When I wait for 1 seconds
  Then I should verify the "Download a Card" sub-menu - xpath "//a[@id='ieepc']" is displayed
  When I wait for 1 seconds
  Then I click on the "Download a Card" menu - xpath "//a[@id='ieepc']"
  When I wait for 1 seconds
  Then I should be redirected to the "https://eucrisauscom-test.dev.pfizerstatic.io/copay-card-download" page in a same tab
  When I wait for 1 seconds
  When I navigate back to the previous page
  
  @Regression
  Scenario: To verify and check the functionality of Activate Card sub-menu is present in the Savings and Support  menu
  When I wait for 3 seconds
  Then I click on the "Savings and Support " menu - xpath "(//a[text()='Savings and Support '])[1]"
  When I wait for 1 seconds
  Then I should verify the "Activate Card" sub-menu - xpath "(//a[text()='Activate Card'])[1]" is displayed
  When I wait for 1 seconds
  Then I click on the "Activate Card" menu - xpath "(//a[text()='Activate Card'])[1]"
  When I wait for 1 seconds
  Then I should be redirected to the "https://eucrisauscom-test.dev.pfizerstatic.io/activate-copay-card" page in a same tab
  When I wait for 1 seconds
  When I navigate back to the previous page
  
  @Regression
  Scenario: To verify and check the functionality of Sign Up sub-menu is present in the Savings and Support  menu
  When I wait for 3 seconds
  Then I click on the "Savings and Support " menu - xpath "(//a[text()='Savings and Support '])[1]"
  When I wait for 1 seconds
  Then I should verify the "Sign Up" sub-menu - xpath "(//a[text()='Sign Up'])[1]" is displayed
  When I wait for 1 seconds
  Then I click on the "Sign Up" menu - xpath "(//a[text()='Sign Up'])[1]"
  When I wait for 1 seconds
  Then I should be redirected to the "https://eucrisauscom-test.dev.pfizerstatic.io/eucrisa-information-sign-up" page in a same tab
  When I wait for 1 seconds
  When I navigate back to the previous page
  
  @Regression
  Scenario: To verify and check the functionality of Pharmacy Finder sub-menu is present in the Savings and Support  menu
  When I wait for 3 seconds
  Then I click on the "Savings and Support " menu - xpath "(//a[text()='Savings and Support '])[1]"
  When I wait for 1 seconds
  Then I should verify the "Pharmacy Finder" sub-menu - xpath "(//a[text()='Pharmacy Finder'])[1]" is displayed
  When I wait for 1 seconds
  Then I click on the "Pharmacy Finder" menu - xpath "(//a[text()='Pharmacy Finder'])[1]"
  When I wait for 1 seconds
  Then I should be redirected to the "https://eucrisauscom-test.dev.pfizerstatic.io/pharmacy-finder" page in a same tab
  When I wait for 1 seconds
  When I navigate back to the previous page
  
  @Regression
  Scenario: To verify and check the functionality of Learn About Telemedicine sub-menu is present in the Savings and Support  menu
  When I wait for 3 seconds
  Then I click on the "Savings and Support " menu - xpath "(//a[text()='Savings and Support '])[1]"
  When I wait for 1 seconds
  Then I should verify the "Learn About Telemedicine" sub-menu - xpath "(//a[text()='Learn About Telemedicine'])[1]" is displayed
  When I wait for 1 seconds
  Then I click on the "Learn About Telemedicine" menu - xpath "(//a[text()='Learn About Telemedicine'])[1]"
  When I wait for 1 seconds
  Then I should be redirected to the "https://eucrisauscom-test.dev.pfizerstatic.io/learn-about-telemedicine" page in a same tab
  When I wait for 1 seconds
  When I navigate back to the previous page
  
  @Regression
  Scenario: To verify and check the functionality of A Closer Look at Eczema sub-menu is present in the More About Eczema   menu
  When I wait for 3 seconds
  Then I click on the "More About Eczema " menu - xpath "(//a[text()='More About Eczema '])[1]"
  When I wait for 1 seconds
  Then I should verify the "A Closer Look at Eczema" sub-menu - xpath "(//a[text()='A Closer Look at Eczema'])[1]" is displayed
  When I wait for 1 seconds
  Then I click on the "A Closer Look at Eczema" menu - xpath "(//a[text()='A Closer Look at Eczema'])[1]"
  When I wait for 1 seconds
  Then I should be redirected to the "https://eucrisauscom-test.dev.pfizerstatic.io/a-closer-look-at-eczema" page in a same tab
  When I wait for 1 seconds
  When I navigate back to the previous page
  
  @Regression
  Scenario: To verify and check the functionality of Treating Eczema sub-menu is present in the More About Eczema   menu
  When I wait for 3 seconds
  Then I click on the "More About Eczema " menu - xpath "(//a[text()='More About Eczema '])[1]"
  When I wait for 1 seconds
  Then I should verify the "Treating Eczema" sub-menu - xpath "(//a[text()='Treating Eczema'])[1]" is displayed
  When I wait for 1 seconds
  Then I click on the "Treating Eczema" menu - xpath "(//a[text()='Treating Eczema'])[1]"
  When I wait for 1 seconds
  Then I should be redirected to the "https://eucrisauscom-test.dev.pfizerstatic.io/treating-eczema" page in a same tab
  When I wait for 1 seconds
  When I navigate back to the previous page
  
  @Regression
  Scenario: To verify and check the functionality of EUCRISA FAQs menu
  When I wait for 3 seconds
  Then I click on the "EUCRISA FAQs" menu - xpath "//a[@id='iooway']"
  When I wait for 1 seconds
  Then I should be redirected to the "https://eucrisauscom-test.dev.pfizerstatic.io/eucrisa-frequently-asked-questions" page in a same tab
  When I wait for 1 seconds
  When I navigate back to the previous page
  
  @Regression
  Scenario: To verify and check the functionality of Save on EUCRISA CTA Button
  When I wait for 3 seconds
  Then I click on the "Save on EUCRISA_CTA_Button" menu - xpath "(//a[text()='Save on EUCRISA'])[2]"
  When I wait for 1 seconds
  Then I should be redirected to the "https://eucrisauscom-test.dev.pfizerstatic.io/pfizer-derm-patient-access" page in a same tab
  When I wait for 1 seconds
  When I navigate back to the previous page
  
   @Regression
  Scenario: To verify and check the functionality of Save on EUCRISA CTA Button
  When I wait for 3 seconds
  Then I click on the "Save on EUCRISA_CTA_Button" menu - xpath "//a[@id='iqwvo']"
  When I wait for 1 seconds
  And I will close the browser
  
  
  
  
  
  
  