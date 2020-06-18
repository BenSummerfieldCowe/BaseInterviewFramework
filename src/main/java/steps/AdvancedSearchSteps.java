package steps;

import context.WebDriverContext;
import cucumber.api.java.en.Given;
import org.openqa.selenium.WebDriver;

public class AdvancedSearchSteps {
    private WebDriver driver = WebDriverContext.getWebDriver();

    @Given("^I am on the Totaljobs homepage$")
    public void navigateToTheAdvancedSearchPage() {
    }
}
