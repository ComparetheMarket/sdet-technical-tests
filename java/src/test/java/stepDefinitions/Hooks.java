package stepDefinitions;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;

import cucumber.api.java.After;
import cucumber.api.java.Before;
import support.constants;

public class Hooks {

	public static WebDriver driver;

	@Before
	public void initPageObjects() {
		System.setProperty("webdriver.chrome.driver",
				"./chromedriver"); // Change this to chromedriver.exe if running on Windows
		driver = new ChromeDriver();
	}

	@After
	public void tearDown() {
		driver.quit();
	}
}
