*** Settings ***
Resource                ../baseApps.robot
Variables               search.yaml
Variables               ../loginPage/loginpage-locator.yaml
Variables               ../homePage/homepage-locator.yaml
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

Click Button Search
    Wait Until Element Is Visible        ${buttonSearch}
    Click Element                        ${buttonSearch}

Search Booking Flight Number
    Wait Until Element Is Visible        ${searchField}
    Input Text                           ${searchField}          ${validbooking}
    Click Element                        ${buttonSearchPage}

Appears Valid Code
    Wait Until Element Is Visible         ${validCode}