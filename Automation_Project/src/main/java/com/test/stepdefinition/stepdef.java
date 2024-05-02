package com.test.stepdefinition;

import java.io.FileReader;
import java.io.IOException;
import java.util.List;
import java.util.Map;
import java.util.Properties;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.edge.EdgeDriver;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import com.aventstack.extentreports.ExtentReports;
import com.aventstack.extentreports.ExtentTest;
import com.aventstack.extentreports.Status;
import com.aventstack.extentreports.reporter.ExtentSparkReporter;

import io.cucumber.datatable.DataTable;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;

public class stepdef {
	WebDriver driver;
	ExtentSparkReporter htmlReporter = new ExtentSparkReporter("extent.html");
	ExtentReports extent = new ExtentReports();

	public static String fetch(String str) throws IOException {
		try {
			FileReader fr = new FileReader(
					"C:\\Users\\hemanth.koppada\\git\\Automation_Framework_Local_Repo\\Automation_Project\\src\\test\\resources\\configFiles\\xpath.properties");
			Properties p = new Properties();
			p.load(fr);
			String s = p.getProperty(str);
			return s;
		} catch (Exception e) {
			System.out.println("XPATH NOT VALID: " + e.getMessage());
			return "XPATH NOT VALID: " + e.getMessage();
		}
	}

	public void waitfor(String str) throws IOException {
		try {
		WebDriverWait wait = new WebDriverWait(driver, 7);
		wait.until(ExpectedConditions.presenceOfElementLocated(By.xpath(fetch(str))));
		}
		catch(Exception e) {
			System.out.println("XPATH NOT FOUND: " + e.getMessage());
		}
	}

	public void clickifpresent(String str) {
		try {
			waitfor(str);
			driver.findElement(By.xpath(fetch(str))).click();
		} catch (Exception e) {
			System.out.println("Click Action Failed: "+ str +" "+ e.getMessage());
		}
	}

	@Given("Open the Webpage")
	public void open_the_webpage() throws IOException {
		String browser = fetch("browser");
		if (browser.equalsIgnoreCase("chrome")) {
			System.setProperty("webdriver.chrome.driver", "C:\\chromedriver-win64\\chromedriver.exe");
			driver = new ChromeDriver();
			driver.manage().window().maximize();
			driver.get(fetch("url"));
		} else if (browser.equalsIgnoreCase("edge")) {
			System.setProperty("webdriver.edge.driver", "C:\\edgedriver_win64\\msedgedriver.exe");
			driver = new EdgeDriver();
			driver.manage().window().maximize();
			driver.get(fetch("url"));
		}
	}

	@Given("Close the cookies")
	public void close_the_cookies() throws IOException, InterruptedException {
		clickifpresent("cookies.XPATH");
		clickifpresent("cookies2.XPATH");
	}

	@Then("I have the following CSS properties for element {string}:")
	public void i_have_the_following_css_properties_for_element(String xpath, DataTable dataTable) throws IOException {
		xpath = xpath + ".XPATH";

		waitfor(xpath);
		extent.attachReporter(htmlReporter);

		String logTitle = xpath.replace(".XPATH", "");

		ExtentTest test = extent.createTest(logTitle, "");

//	    test.log(Status.INFO, "Validating " + logTitle);
		try {
		WebElement webElement = driver.findElement(By.xpath(fetch(xpath)));
		
		List<Map<String, String>> cssProperties = dataTable.asMaps(String.class, String.class);

		for (Map<String, String> row : cssProperties) {
			String cssName = row.get("cssProperty");
			String expectedValue = row.get("expectedValue");
			String actualValue = webElement.getCssValue(cssName);
			if (actualValue.equals(expectedValue)) {
				System.out.println(
						"Passed || " + cssName + " || Expected : " + expectedValue + " || Actual : " + actualValue);
				test.log(Status.PASS,
						"Passed || " + cssName + " || Expected : " + expectedValue + " || Actual : " + actualValue);
			} else {
				System.out.println(
						"Failed || " + cssName + " || Expected : " + expectedValue + " || Actual : " + actualValue);
				test.log(Status.FAIL,
						"Failed || " + cssName + " || Expected : " + expectedValue + " || Actual : " + actualValue);
			}
		}
		System.out.println(
				"---------------------------------------------------------------------------------------------------------------------");
		test.pass("Done");
		extent.flush();
		}
		catch (Exception e) {
//			test.log(Status.SKIP,"Element not found : "+ xpath +" "+ e.getMessage());
			String error = e.getClass().getSimpleName();
			if(error.equals("IllegalArgumentException")) {
				test.log(Status.ERROR,"xpath not found : "+ xpath +" "+ e.getClass().getSimpleName());
				extent.flush();
			}
			else if(error.equals("NoSuchElementException")) {
				test.log(Status.ERROR,"Element not found in page: "+ xpath +" "+ e.getClass().getSimpleName());
				extent.flush();
			}
		}
	}

	@Then("close the browser")
	public void close_the_browser() {
		driver.quit();
	}
}