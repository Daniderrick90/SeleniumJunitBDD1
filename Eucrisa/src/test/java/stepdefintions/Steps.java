package stepdefintions;

import java.net.MalformedURLException;
import java.net.URL;
import java.time.Duration;
import java.util.Set;
import java.io.File;
import java.io.IOException;
import org.openqa.selenium.TakesScreenshot;
import java.util.Random;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.apache.commons.io.FileUtils;
import org.openqa.selenium.Alert;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;
import org.openqa.selenium.remote.DesiredCapabilities;
import org.openqa.selenium.remote.RemoteWebDriver;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.testng.Assert;
import variables.ConfigProperties;
import org.openqa.selenium.interactions.Actions;

public class Steps {
	public static WebDriver driver;
	public static final String Username = "shashikiran_y8LYcK";
	public static final String Automatekey = "vx6VutkVpCHbzxgkDeph";
	public static final String BSurl = "https://"+Username+":"+Automatekey+"@hub-cloud.browserstack.com/wd/hub";
	@Given("I enter the URL {string}")
	public void i_enter_the_url(String url) throws MalformedURLException {
		
		//Initializing app-config file
				ConfigProperties.initializePropertyFile();
	    // Write code here that turns the phrase above into concrete actions
		if(ConfigProperties.property.getProperty("browser_stack_Execution").equals("Y")) {
		DesiredCapabilities caps = new DesiredCapabilities();
		caps.setCapability("browserstack.geoLocation", "US");
		caps.setCapability("browserName",ConfigProperties.property.getProperty("browser") );
		caps.setCapability("browserVersion",ConfigProperties.property.getProperty("browser_version"));
		caps.setCapability("projectName", ConfigProperties.property.getProperty("projectName"));
		caps.setCapability("name", ConfigProperties.property.getProperty("Suit_name"));
				driver = new RemoteWebDriver(new URL(BSurl),caps);
		
	    //throw new io.cucumber.java.PendingException();
	}
		else if(ConfigProperties.property.getProperty("browser_stack_Execution").equals("N")) {
			driver = new ChromeDriver();
		}
		driver.get(url);
		driver.manage().window().maximize();
		driver.manage().timeouts().implicitlyWait(Duration.ofSeconds(20));
	}
	
	@Then("I login with the cloudflare access")
	public void i_login_with_the_cloudflare_access() {
	    // Write code here that turns the phrase above into concrete actions
	    driver.findElement(By.xpath("//div[@class='AuthBoxRow--name']")).click();
	    driver.findElement(By.xpath("//input[@id='username']")).sendKeys("TNS");
	    driver.findElement(By.xpath("//input[@id='password']")).sendKeys("@September.55");
	    driver.findElement(By.xpath("//input[@id='submit_button']")).click();
	}

	@When("I click on the {string} menu - xpath {string}")
	public void i_click_on_the_menu_xpath(String string, String xpath) {
	    // Write code here that turns the phrase above into concrete actions
	    driver.findElement(By.xpath(xpath)).click();
	}

	@Then("I should verify the {string} sub-menu is displayed")
	public void i_should_verify_the_sub_menu_is_displayed(String xpath) {
	    // Write code here that turns the phrase above into concrete actions
	    driver.findElement(By.xpath(xpath));
	}
	
	@Then("I should verify the {string} link - xpath {string} is dispalyed")
	public void i_should_verify_the_link_xpath_is_dispalyed(String string, String xpath) {
	    // Write code here that turns the phrase above into concrete actions
		String text = driver.findElement(By.xpath(xpath)).getText();
		Assert.assertEquals(string, text);
	}

	@Then("I should verify the {string} sub-menu - xpath {string} is displayed")
	public void i_should_verify_the_sub_menu_xpath_is_displayed(String string, String xpath) {
	    // Write code here that turns the phrase above into concrete actions
		String text = driver.findElement(By.xpath(xpath)).getText();
		Assert.assertEquals(string, text);
	}

	@Then("I should be redirected to the {string} page in a same tab")
	public void i_should_be_redirected_to_the_page_in_a_same_tab(String url) {
	    // Write code here that turns the phrase above into concrete actions
	    String geturl = driver.getCurrentUrl();
	    Assert.assertEquals(geturl, url);
	    System.out.println(geturl);
	}

	@Then("I should be redirected to the {string} page in a new tab")
	public static void Window_Handles(String url) { 
	String current_Window = driver.getWindowHandle();
	System.out.println("Print current window: "+current_Window);
	Set<String> allWindowHandles = driver.getWindowHandles();
	for(String handle : allWindowHandles){
    System.out.println("Print current window: "+allWindowHandles);
    driver.switchTo().window(handle); //Switch to the desired window first and then execute commands using driver
	}
    String current_URL = driver.getCurrentUrl();
	Assert.assertEquals(current_URL,url);
	driver.close();
    driver.switchTo().window(current_Window);

	}

	@When("I enter {string} into the {string} field - xpath {string}")
	public void i_enter_into_the_field_xpath(String string, String string2, String xpath) {
	    // Write code here that turns the phrase above into concrete actions
	    driver.findElement(By.xpath(xpath)).sendKeys(string);;
	}

	@When("I select {string} - xpath {string} from the {string} dropdown")
	public void i_select_xpath_from_the_dropdown(String string, String xpath, String string3) {
	    // Write code here that turns the phrase above into concrete actions
		driver.findElement(By.xpath(xpath));
	}

	@When("I check the {string} checkbox - xpath {string}")
	public void i_check_the_checkbox_xpath(String string, String xpath) {
	    // Write code here that turns the phrase above into concrete actions
		driver.findElement(By.xpath(xpath)).click();
	}

	@When("I select the {string} RadioButton - xpath {string}")
	public void i_select_the_radio_button_xpath(String string, String xpath) {
	    // Write code here that turns the phrase above into concrete actions
		driver.findElement(By.xpath(xpath)).click();
	}

	@When("I Scroll to the element {string} - xpath {string}")
	public void i_scroll_to_the_element_xpath(String string, String xpath) {
	    // Write code here that turns the phrase above into concrete actions
		WebElement elm = driver.findElement(By.xpath(xpath));
		((JavascriptExecutor) driver).executeScript("arguments[0].scrollIntoView(true);", elm);
	}

	@When("I navigate back to the previous page")
	public void i_navigate_back_to_the_previous_page() {
	    // Write code here that turns the phrase above into concrete actions
		driver.navigate().back();
	    
	}

	@When("I mouseover on the {string} - xpath {string} and click on {string} sub-menu - xpath {string}")
	public void i_mouseover_on_the_xpath_and_click_on_sub_menu_xpath(String string, String xpath, String string3, String xpath1) {
	    // Write code here that turns the phrase above into concrete actions
	    Actions action  = new Actions(driver);
	    WebElement element = driver.findElement(By.xpath(xpath));
	    action.moveToElement(element).perform();
	    driver.findElement(By.xpath(xpath1));
	}
	
	@When("I mouseover on the {string} - xpath {string}")
	public void i_mouseover_on_the_xpath(String string, String xpath) {
	    // Write code here that turns the phrase above into concrete actions
		Actions action  = new Actions(driver);
	    WebElement element = driver.findElement(By.xpath(xpath));
	    action.moveToElement(element).perform();
	}

	@When("I wait for {int} seconds")
	public void i_wait_for_seconds(int sec) throws InterruptedException {
	    // Write code here that turns the phrase above into concrete actions
		 sec = sec*1000;
		 Thread.sleep(sec);
	}
	
	@Then("the alert popup should appear")
	public void the_alert_popup_should_appear() {
	    // Write code here that turns the phrase above into concrete actions
	    Alert al = driver.switchTo().alert();
	    al.accept();
	    String s = al.getText();
	    System.out.println(s);
	}
	
	@Then("I will upload {string} on the upload box - xpath {string}")
	public void i_will_upload_on_the_upload_box_xpath(String path, String xpath) throws InterruptedException {
	    // Write code here that turns the phrase above into concrete actions
		File file_Upload = new File(path);
		driver.findElement(By.xpath(xpath)).sendKeys(file_Upload.getAbsolutePath());
		Thread.sleep(5000);
	}
	
	@When("I click on the {string} dropdown - xpath {string} and select the {string} content - xpath {string} from the dropdown")
	public void i_click_on_the_dropdown_xpath_and_select_the_content_xpath_from_the_dropdown(String string, String dropdown, String string3, String select_option) {
	    // Write code here that turns the phrase above into concrete actions
	    driver.findElement(By.xpath(dropdown)).click();
	    driver.findElement(By.xpath(select_option)).click();
	}
	
	@Then("I take screenshot") 
	public static void take_Screenshot() throws IOException {
	ConfigProperties.initializePropertyFile();
	        //Convert web driver object to TakeScreenshot
	        TakesScreenshot scrShot =((TakesScreenshot)driver);
	        //Call getScreenshotAs method to create image file
	         File SrcFile=scrShot.getScreenshotAs(OutputType.FILE);
	            //Move image file to new destination
	         SimpleDateFormat formatter = new SimpleDateFormat("dd-MM-yyyy");  
	         Date date = new Date();  
	         String date1 = formatter.format(date); 
	         Random random = new Random();
	                int randomNumber = random.nextInt(900) + 100;
	         File DestFile=new File("test-output//SnapShot//"+date1+"//"+ConfigProperties.property.getProperty("projectName")+"_"+randomNumber+".png");
	                //Copy file at destination
	         FileUtils.copyFile(SrcFile, DestFile);
	}



	
	@When("I will close the browser")
	public void i_will_close_the_browser() {
	    // Write code here that turns the phrase above into concrete actions
		driver.close();
	}


	
	

}
