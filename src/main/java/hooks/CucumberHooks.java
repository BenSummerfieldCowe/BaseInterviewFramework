package hooks;


import context.WebDriverContext;
import cucumber.api.java.After;
import cucumber.api.java.Before;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;

public class CucumberHooks {

    private WebDriver driver;

    @Before
    public void setup() {
        System.setProperty("webdriver.chrome.driver", "JobsiteInterview/Resources/chromedriver.exe");
        driver = new ChromeDriver();
        WebDriverContext.setWebDriver(driver);
    }

    @After
    public void tearDown() {
        driver.quit();
    }
}
