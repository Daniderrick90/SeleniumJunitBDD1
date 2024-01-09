import java.util.List;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;

public class Shadow {
	

	public Shadow(WebDriver driver) {
		// TODO Auto-generated constructor stub
	}

	public static void main(String[] args) throws InterruptedException {
		// TODO Auto-generated method stub
		WebDriver driver = new ChromeDriver();
		driver.manage().window().maximize();
        driver.get("https://eucrisa.pfizerpro.com/");
        Shadow shadow_Dom = new Shadow(driver);
        shadow_Dom.setImplicitWait(20);
        Thread.sleep(3000);
//        List<WebElement> s = shadow_Dom.findElements("span > i");
//        System.out.println(s.size());
        shadow_Dom.findElementByXPath("//i[text()='close']").click();
        
		

	}

	private void setImplicitWait(int i) {
		// TODO Auto-generated method stub
		
	}

	private List<WebElement> findElements(String string) {
		// TODO Auto-generated method stub
		return null;
	}

	private WebElement findElementByXPath(String string) {
		// TODO Auto-generated method stub
		return null;
	}

}
