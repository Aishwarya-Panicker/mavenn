package com.google.tests;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.testng.Assert;
import org.testng.annotations.AfterClass;
import org.testng.annotations.BeforeClass;
import org.testng.annotations.Test;
import org.openqa.selenium.remote.DesiredCapabilities;

public class GoogleHomePageTest {
	
	private WebDriver driver; 
	String appURL = "http://localhost:8085/myapp";
	
	
	@BeforeClass
	public void testSetUp() {
		//System.setProperty("webdriver.chrome.driver", "chromedriver");
		
		driver = new ChromeDriver();
	}
	
	@Test
	public void verifyGooglePageTittle() {
		driver.navigate().to(appURL);
		String getTitle = driver.getTitle();
		Assert.assertEquals("getTitle", "Login Form");
	}
	
	@AfterClass
	public void tearDown() {
		driver.quit();
	}
	
}