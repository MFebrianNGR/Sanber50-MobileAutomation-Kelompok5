*** Settings ***
Resource                ../baseApps.robot
Variables               book_flight.yaml
Variables               ../homePage/homepage-locator.yaml
Variables               ../loginPage/loginpage-locator.yaml
Variables               ../baseApps.robot

** Keywords **
Click Button Sign In
    Click Element                        ${signInButton}

Input Username Password Correct
    Wait Until Element Is Visible        ${username}
    Input Text                           ${username}        ${username_1}
    Input Password                       ${password}        ${password_1}

Click Button Login
    Click Element                        ${logInButton}

Verify Login Page
    Wait Until Element Is Visible        ${verifyLogin}

Click Button Book
    Wait Until Element Is Visible        ${bookButton}
    Click Element                        ${bookButton}
