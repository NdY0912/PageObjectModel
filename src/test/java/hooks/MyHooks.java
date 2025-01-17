package hooks;
import java.util.Properties;

import java.time.Duration;

import org.openqa.selenium.WebDriver;

import factory.DriverFactory;
import io.cucumber.java.After;
import io.cucumber.java.Before;
import utils.ConfigReader;

public class MyHooks {
	
	WebDriver driver;
	
	@Before
	public void setup() {
		Properties prop = new ConfigReader().intializeProperties();
		DriverFactory.initializeBrowser(prop.getProperty("browser"));
		driver = DriverFactory.getDriver();
		driver.manage().deleteAllCookies();
		driver.manage().window().maximize();
		driver.manage().timeouts().implicitlyWait(Duration.ofSeconds(10));
		driver.get(prop.getProperty("url"));
	}
	
	@After
	public void tearDown() {		
		driver.quit();	

	}
	
	

}
