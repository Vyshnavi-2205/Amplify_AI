package Amplify.Amplify;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;
import org.testng.annotations.AfterMethod;
import org.testng.annotations.BeforeMethod;

public class BasePage {
	
protected WebDriver driver;
    
    public BasePage(WebDriver driver) {
        this.driver = driver;
    }
    @BeforeMethod
    public void setUp() {
        // Initialize WebDriver instance here
    }
    
    @AfterMethod
    public void tearDown() {
        // Quit WebDriver instance here
    }
    
    public void waitForElementToBeVisible(WebElement element) {
        WebDriverWait wait = new WebDriverWait(driver, 10);
        wait.until(ExpectedConditions.visibilityOf(element));
    }
    
    public void clickOnElement(WebElement element) {
        waitForElementToBeVisible(element);
        element.click();
    }
    
    public String getPageTitle() {
        return driver.getTitle();
    }

}
