package br.com.chronosacademy.maps;

import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;

public class LoginMap {

    @FindBy(css = "#menuUser")
    public WebElement btnLogin;

    @FindBy(css = "closeBtn loginPopUpCloseBtn")
    public WebElement btnFechar;

    @FindBy
    public WebElement divFecharModal;

    @FindBy(css = "username")
    public WebElement inpUserName;

    @FindBy(css = "password")
    public WebElement inpPassword;
    public WebElement btnSignIn;
    public WebElement inpRemember;
    public WebElement linkCreateAccount;
}
