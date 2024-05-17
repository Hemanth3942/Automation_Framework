package com.test.stepdefinition;

import java.io.FileReader;
import java.io.IOException;
import java.time.Duration;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.HashMap;
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
import org.testng.annotations.Test;

import com.aventstack.extentreports.ExtentReports;
import com.aventstack.extentreports.ExtentTest;
import com.aventstack.extentreports.Status;
import com.aventstack.extentreports.reporter.ExtentSparkReporter;

import io.cucumber.datatable.DataTable;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;

@Test
public class stepdef {

	LocalDateTime currentDateTime = LocalDateTime.now();
	DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd_MM_yy_HH_mm_ss");
	DateTimeFormatter date = DateTimeFormatter.ofPattern("dd_MM_yy");
	String formattedDateTime = currentDateTime.format(formatter);
	String formattedDate = currentDateTime.format(date);

	WebDriver driver;
	ExtentSparkReporter htmlReporter = new ExtentSparkReporter(
			"./reports/reports(" + formattedDate + ")/ExtentReport-" + formattedDateTime + ".html");
	ExtentReports extent = new ExtentReports();
	ExtentTest test;

	public static String fetch(String str) throws IOException {
		try {
			FileReader fr = new FileReader(".\\src\\test\\resources\\configFiles\\xpath.properties");
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
			WebDriverWait wait = new WebDriverWait(driver, Duration.ofSeconds(5));
			wait.until(ExpectedConditions.presenceOfElementLocated(By.xpath(fetch(str))));
		} catch (Exception e) {
			System.out.println("XPATH NOT FOUND: " + e.getMessage());
		}
	}

	public void clickifpresent(String str) {
		try {
			waitfor(str);
			driver.findElement(By.xpath(fetch(str))).click();
		} catch (Exception e) {
			System.out.println("Click Action Failed: " + str + " " + e.getMessage());
		}
	}

	@Given("Open the Webpage {string}")
	public void open_the_webpage(String url) throws IOException {
		String browser = fetch("browser");
		if (browser.equalsIgnoreCase("chrome")) {
			System.setProperty("webdriver.chrome.driver", "C:\\chromedriver-win64\\chromedriver.exe");
			driver = new ChromeDriver();
			driver.manage().window().maximize();
			driver.get(fetch(url));
		} else if (browser.equalsIgnoreCase("edge")) {
			System.setProperty("webdriver.edge.driver", "C:\\edgedriver_win64\\msedgedriver.exe");
			driver = new EdgeDriver();
			driver.manage().window().maximize();
			driver.get(fetch(url));
		} else if (browser.equalsIgnoreCase("mobile")) {
			System.setProperty("webdriver.chrome.driver", "C:\\chromedriver-win64\\chromedriver.exe");
			driver = new ChromeDriver();
			driver.manage().window().maximize();
			Map<String, Object> deviceMetrics = new HashMap<>();
			deviceMetrics.put("width", 375);
			deviceMetrics.put("height", 667);
			deviceMetrics.put("deviceScaleFactor", 0);
			deviceMetrics.put("mobile", true);
			((ChromeDriver) driver).executeCdpCommand("Emulation.setDeviceMetricsOverride", deviceMetrics);
			driver.get(fetch(url));
		} else if (browser.equalsIgnoreCase("ipad")) {
			System.setProperty("webdriver.chrome.driver", "C:\\chromedriver-win64\\chromedriver.exe");
			driver = new ChromeDriver();
			driver.manage().window().maximize();
			Map<String, Object> deviceMetrics = new HashMap<>();
			deviceMetrics.put("width", 768);
			deviceMetrics.put("height", 1024);
			deviceMetrics.put("deviceScaleFactor", 0);
			deviceMetrics.put("mobile", true);
			((ChromeDriver) driver).executeCdpCommand("Emulation.setDeviceMetricsOverride", deviceMetrics);
			driver.get(fetch(url));
		}

	}

	@Given("Close the cookies")
	public void close_the_cookies() throws IOException, InterruptedException {
		clickifpresent("cookies.XPATH");
		clickifpresent("cookies2.XPATH");
	}

	@Then("I have the following CSS properties for element {string}")
	public void i_have_the_following_css_properties_for_element(String xpath, DataTable dataTable) throws IOException {
		xpath = xpath + ".XPATH";
		waitfor(xpath);
		extent.attachReporter(htmlReporter);
		if (test == null) {
			test = extent.createTest(driver.getTitle(), "");
		}
		String logTitle = xpath.replace(".XPATH", "");

		ExtentTest subtest = test.createNode(logTitle, "");

		try {
			WebElement webElement = driver.findElement(By.xpath(fetch(xpath)));

			List<Map<String, String>> cssProperties = dataTable.asMaps(String.class, String.class);

			for (Map<String, String> row : cssProperties) {
				String cssName = row.get("cssProperty");
				String operator = row.get("operator");
				String expectedValue = row.get("expectedValue");
				if (operator.equals("equalsTo")) {
					String actualValue = webElement.getCssValue(cssName);
					if (actualValue.equals(expectedValue)) {
						System.out.println("Passed || " + cssName + " || Expected : " + expectedValue + " || Actual : "
								+ actualValue);
						subtest.log(Status.PASS, "Passed || " + cssName + " || Expected : " + expectedValue
								+ " || Actual : " + actualValue);
					} else {
						System.out.println("Failed || " + cssName + " || Expected : " + expectedValue + " || Actual : "
								+ actualValue);
						subtest.log(Status.FAIL, "Failed || " + cssName + " || Expected : " + expectedValue
								+ " || Actual : " + actualValue);
					}
				}
			}
			System.out.println(
					"---------------------------------------------------------------------------------------------------------------------");
			subtest.pass("Done");
		} catch (Exception e) {
			String error = e.getClass().getSimpleName();
			if (error.equals("IllegalArgumentException")) {
				subtest.log(Status.ERROR, "xpath not found : " + xpath + " " + e.getClass().getSimpleName());
			} else if (error.equals("NoSuchElementException")) {
				subtest.log(Status.ERROR, "Element not found in page: " + xpath + " " + e.getClass().getSimpleName());
			}
		} finally {
//			extent.flush();
		}
	}

	@Then("validate that element {string} clickable and redirect to link")
	public void validate_that_element_clickable_and_redirect_to_link(String string) throws IOException, InterruptedException {
		String xpath = string;
		String url = driver.getCurrentUrl();
		string = string + ".XPATH";
		clickifpresent(string);
		String url1 = driver.getCurrentUrl();
		ExtentTest subtest = test.createNode("Click Funtionality " + xpath , "");
		if (url.equalsIgnoreCase(url1)) {
			System.out.println("Unable to click "+ xpath);
			subtest.log(Status.FAIL, "Unable to click "+ xpath);
			
		} else {
			System.out.println("Clicked " + xpath + " and redirected to : " + url1);
			subtest.log(Status.PASS, "Clicked " + xpath + " and redirected to : " + url1);
		}

	}

	@Then("browser go back")
	public void browser_go_back() {
		driver.navigate().back();
		String url = driver.getCurrentUrl();
		System.out.println(url);
	}

	@Then("close the browser")
	public void close_the_browser() {
		extent.flush();
		driver.quit();
	}
}