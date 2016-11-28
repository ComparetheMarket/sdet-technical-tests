package stepDefinitions;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import support.constants;

public class Lookup {
	public String name;
	public int inputValue;
	public WebDriver driver;

	public Lookup() {
		driver = Hooks.driver;
	}

	@Given("^I am on the vehicle details page$")
	public void i_am_on_the_vehicle_details_page() {
		driver.get(constants.baseURL);
		WebDriverWait pageLoadWait = new WebDriverWait(driver, 10);
		WebElement quoteCircle = driver.findElement(By.className("mkt-circular-icon-car"));
		pageLoadWait.until(ExpectedConditions.elementToBeClickable(quoteCircle));
		quoteCircle.click();
	}

	@When("^I search for a numberplate of (.*?)$")
	public void i_search_for_a_numberplate_of_(String regNo) {
		By regBoxLocator = By.id("registration-number");
		WebDriverWait pageLoadWait = new WebDriverWait(driver, 10000);
		pageLoadWait.until(ExpectedConditions.visibilityOfElementLocated(regBoxLocator));
		WebElement regBox = driver.findElement(regBoxLocator);
		regBox.sendKeys(regNo);
		driver.findElement(By.id("find-vehicle-by-reg")).click();
	}

	@Then("^the vehicle make is '(.*?)'$")
	public void the_vehicle_make_is_(String vehicleMake) {
		By fullSummaryLocator = By.className("vehicle-details");
		WebDriverWait pageLoadWait = new WebDriverWait(driver, 10000);
		pageLoadWait.until(ExpectedConditions.visibilityOfElementLocated(fullSummaryLocator));
		String fullSummary = driver.findElement(fullSummaryLocator).getText();

		//////////////////////////
		// TEST 5: fullSummary is a comma-separated vehicle description. We only want the first part.
		//////////////////////////
		
		Assert.assertEquals(vehicleMake, fullSummary);
	}
}