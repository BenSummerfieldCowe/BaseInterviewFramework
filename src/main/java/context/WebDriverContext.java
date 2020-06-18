package context;

import org.openqa.selenium.WebDriver;

public class WebDriverContext {
    private WebDriver driver;
    private static WebDriverContext instance;

    private WebDriverContext() {
    }

    public static WebDriverContext getInstance() {
        if (instance == null) {
            instance = new WebDriverContext();
        }
        return instance;
    }


    public static WebDriver getWebDriver() {
        return getInstance().driver;
    }

    public static void setWebDriver(WebDriver driver) {
        getInstance().driver = driver;
    }
}
