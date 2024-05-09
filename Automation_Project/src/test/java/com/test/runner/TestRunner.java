package com.test.runner;

import io.cucumber.testng.AbstractTestNGCucumberTests;
import io.cucumber.testng.CucumberOptions;

@CucumberOptions(
	plugin = { "json:target/cucumber-reports/cucumber.json",
			"pretty:target/site/pretty/report.html", "html:target/cucumber-report.html"},
    features = {"src/test/resources/features"},
    glue = "com.test.stepdefinition",
    tags = "@tag1"
)
public class TestRunner extends AbstractTestNGCucumberTests {
    // Additional configuration options can be added here
}